/*-----------------------------------------------------------------------------
* Notes : ETL script to prepate raw xml file for import_user upload
*	  Custom fields like keywords need to be processed seperately
*         and will be part of the futue release
* Date  : 09/12/2016
-----------------------------------------------------------------------------*/

-----------------------------------------------------------------------------
-- create table to hold raw xml data
-----------------------------------------------------------------------------
drop table xml_input_numbered;
create table xml_input_numbered
    (
    xml_input text
    );

COPY xml_input_numbered FROM '<input file location>' CSV;

-----------------------------------------------------------------------------
-- organize xml data with row_nums, node, and text values
-----------------------------------------------------------------------------
drop table xml_input_numbered_1;
create table xml_input_numbered_1 as
(
select 
	 case when node like 'PMID%' then text_value else null end as pmid_sparse
	,case when node like 'Author%' then 'Author' else null end as author_sparse
	, * from(
		select
			  raw_row_nums
			, split_part(xml_body, '>', 1) node
			, split_part(xml_body, '>', 2) text_value
			from(
				select * 
					from(
						select trim(split_part(xml_input, '<', 1))::int raw_row_nums
								, split_part(xml_input, '<', 2) xml_body 
							from xml_input_numbered --where xml_input like '%Author%'
							order by xml_input 
							--limit 10000
						) a1
						where xml_body like 'PMID Version%' 
							or xml_body = 'Author>'
							or xml_body like 'Author ValidYN%'
							or xml_body like 'LastName%'
							or xml_body like 'ForeName%'
							or xml_body like 'Initials%'
							or xml_body like 'Affiliation>%'
			) a2
		)a3
		--order by row_nums;
);

--select * from xml_input_numbered_1 limit 1000;

-----------------------------------------------------------------------------
-- assign associated pmid to each row
-----------------------------------------------------------------------------
drop table xml_input_numbered_2;
create table xml_input_numbered_2 as
(
  select 
	  first_value(pmid_sparse) over (partition by pmid_value_partition order by raw_row_nums)::int as pmid_full 
	  , * 
	from (
		select 
		sum(case when pmid_sparse is null then 0 else 1 end) over (order by raw_row_nums) as pmid_value_partition 
		, * 
		from xml_input_numbered_1) pmid_value_partition
)

--select * from xml_input_numbered_2 limit 100;

-----------------------------------------------------------------------------
-- assign author ranking within each PMID
-----------------------------------------------------------------------------
drop table xml_input_numbered_3; 
create table xml_input_numbered_3 as
(
	Select 
		sum(case when author_sparse is null then 0 else 1 end) over (partition by pmid_full order by raw_row_nums) as author_ranking
		, * 
		from xml_input_numbered_2
);

--select * from xml_input_numbered_3 order by raw_row_nums limit 100;

-----------------------------------------------------------------------------
-- extract emails from affiliation data where available
-----------------------------------------------------------------------------
drop table  xml_input_numbered_4;
create table  xml_input_numbered_4 as
(
	select 
		  raw_row_nums
		, pmid_full
		, author_ranking
		, node
		, text_value
		, substring(text_value from '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}') as email 
		from xml_input_numbered_3
			 where node = 'LastName' 
				or node = 'ForeName' 
				or node = 'Initials' 
				or node = 'Affiliation' 
);

--select * from xml_input_numbered_4 order by raw_row_nums limit 100;

-----------------------------------------------------------------------------
-- extract pmid and first names
-----------------------------------------------------------------------------
drop table pmid_firstname;
create table pmid_firstname as
(
select pmid_full, author_ranking, text_value from xml_input_numbered_4 where node  = 'ForeName'
);

--select count(*) from pmid_firstname limit 100

-----------------------------------------------------------------------------
-- extract pmid and last names
-----------------------------------------------------------------------------
drop table pmid_lastname;
create table pmid_lastname as
(
select pmid_full, author_ranking, text_value from xml_input_numbered_4 where node  = 'LastName'
);

--select * from pmid_lastname limit 100

-----------------------------------------------------------------------------
-- extract pmid and Initials
-----------------------------------------------------------------------------
drop table pmid_initials;
create table pmid_initials as
(
select pmid_full, author_ranking, text_value from xml_input_numbered_4 where node  = 'Initials'
);

--select * from pmid_initials limit 100

-----------------------------------------------------------------------------
-- extract pmid and emails
-----------------------------------------------------------------------------
drop table pmid_email;
create table pmid_email as
(
select pmid_full, author_ranking, text_value, email from xml_input_numbered_4 where node = 'Affiliation'
);

--select count(*) from pmid_email where email is not null limit 100

-----------------------------------------------------------------------------
-- join tables to get desited columns in a single row
-----------------------------------------------------------------------------
copy 
(
	select 
		a1. pmid_full as PMID
		, a1.text_value LastName
		, a2.text_value FirstName
		, a3.text_value MiddleInitials
		, a4.text_value Affiliation
		, a4.email Email
		from pmid_lastname a1 
			join pmid_firstname a2 
				on a1.pmid_full = a2.pmid_full and a1.author_ranking = a2.author_ranking
			join pmid_initials a3 
				on  a1.pmid_full = a3.pmid_full and a1.author_ranking = a3.author_ranking 
			join pmid_email a4 
				on  a1.pmid_full = a4.pmid_full and a1.author_ranking = a4.author_ranking 
	)
to '<output file location>'
with CSV HEADER DELIMITER ',';

--update `engine4_ipimportcsv_importinfo` set admin_notes = 'methylation_0601_0912 first' where admin_notes = 'methylation_0601_0912_part3'
