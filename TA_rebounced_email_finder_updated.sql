----------------------------------------------------------------------------------------------------------------------
---- Author: Sunny Piya
---- Notes: This program is designed to find a list of emails that bounced more than once with the last 6 months
---- the goal is to opt out these emails fom the TA database.
----------------------------------------------------------------------------------------------------------------------

/*****
--Shell script to combine all files for each region and month into a master list
#!/bin/bash

cat ~/Desktop/Database_Bounce_Incidence/AS_December_Panel/*.csv > ~/Desktop/Database_Bounce_Incidence_Merge/AS_DEC_PANEL.csv
cat ~/Desktop/Database_Bounce_Incidence/AS_June_Panel/*.csv > ~/Desktop/Database_Bounce_Incidence_Merge/AS_JUN_PANEL.csv
cat ~/Desktop/Database_Bounce_Incidence/EU_December_Panel/*.csv > ~/Desktop/Database_Bounce_Incidence_Merge/EU_DEC_PANEL.csv
cat ~/Desktop/Database_Bounce_Incidence/EU_June_Panel/*.csv > ~/Desktop/Database_Bounce_Incidence_Merge/EU_JUN_PANEL.csv
cat ~/Desktop/Database_Bounce_Incidence/NA_December_Panel/*.csv > ~/Desktop/Database_Bounce_Incidence_Merge/NA_DEC_PANEL.csv
cat ~/Desktop/Database_Bounce_Incidence/NA_June_Panel/*.csv > ~/Desktop/Database_Bounce_Incidence_Merge/NA_JUN_PANEL.csv
cat ~/Desktop/Database_Bounce_Incidence/ROW_December_Panel/*.csv > ~/Desktop/Database_Bounce_Incidence_Merge/ROW_DEC_PANEL.csv
cat ~/Desktop/Database_Bounce_Incidence/ROW_June_Panel/*.csv > ~/Desktop/Database_Bounce_Incidence_Merge/ROW_JUN_PANEL.csv

***/

create table 
--as_december
--as_june 
--eu_december 
--eu_june
--na_december
--na_june 
--row_december 
--row_june 
(
ResponseID character varying
,LastName character varying
,FirstName character varying
,ExternalDataReference character varying
,Email character varying
,Status character varying
,EndDate character varying
,Link character varying
,LinkExpiration character varying
)

copy 
--as_december 
--as_june  
--eu_december 
--eu_june 
--na_december 
--na_june 
--row_december 
row_june 
from '/users/sunnypiya/desktop/Database_Bounce_Incidence_Merge/ROW_JUN_PANEL.csv'
delimiter ','
csv header;

select * from  stat_as_december limit 10;
create table stat_as_december as (select 'as_dec'::varchar as ID, * from as_december);
create table stat_as_june as (select 'as_june'::varchar as ID, * from as_june);
create table stat_eu_december as (select 'eu_dec'::varchar as ID, * from eu_december);
create table stat_eu_june as (select 'eu_june'::varchar as ID, * from eu_june);
create table stat_na_december as (select 'na_dec'::varchar as ID, * from na_december);
create table stat_na_june as (select 'na_june'::varchar as ID, * from na_june);
create table stat_row_december as (select 'row_dec'::varchar as ID, * from row_december);
create table stat_row_june as (select 'row_june'::varchar as ID, * from row_june);


drop table as_december ;
drop table as_june  ;
drop table eu_december ;
drop table eu_june ;
drop table na_december ;
drop table na_june ;
drop table row_december ;
drop table row_june ;

copy
(
--Region: AS
select  'AS' region, email from (
	select count(*) over (partition by email) as Email_ct, * from 
		(
			(select id, email from stat_as_december where Status = 'Email Bounced' group by 1, 2)
			UNION ALL
			(select id, email from stat_as_june where Status = 'Email Bounced' group by 1, 2)
		) a1 order by email	
	 )a2 
where a2.Email_ct > 1
group by 1, 2

UNION ALL
--Region: EU 
select 'EU' region, email from (
	select count(*) over (partition by email) as Email_ct, * from 
		(
			(select id, email from stat_eu_december where Status = 'Email Bounced' group by 1, 2)
			UNION ALL
			(select id, email from stat_eu_june where Status = 'Email Bounced' group by 1, 2)
		) a1 order by email	
	 )a2 
where a2.Email_ct > 1
group by 1, 2

UNION ALL
--Region: NA
select 'NA' region, email from (
	select count(*) over (partition by email) as Email_ct, * from 
		(
			(select id, email from stat_na_december where Status = 'Email Bounced' group by 1, 2)
			UNION ALL
			(select id, email from stat_na_june where Status = 'Email Bounced' group by 1, 2)
		) a1 order by email	
	 )a2 
where a2.Email_ct > 1
group by 1, 2

UNION ALL
--Region: ROW
select 'ROW' region, email from (
	select count(*) over (partition by email) as Email_ct, * from 
		(
			(select id, email from stat_row_december where Status = 'Email Bounced' group by 1, 2)
			UNION ALL
			(select id, email from stat_row_june where Status = 'Email Bounced' group by 1, 2)
		) a1 order by email	
	 )a2 
where a2.Email_ct > 1
group by 1, 2
)

to '/users/sunnypiya/desktop/Database_Bounce_Incidence_Merge/final_bounced_email_list.csv'
delimiter ','
csv header;
