
CREATE TABLE cocreation_merge
(
	  "User id" integer,
	  "First Name" text,
	  "Last Name" text
	  "Country" text
	  "Action Id" integer,
	  "Event Num" text,
	  "Post" text,
	  "Comment Id" integer,
	  "Comment" text,
	  "Comment Parent Id" integer,
	  "Comment Poster User id" integer,
	  "Comment Poster First Name" text,
	  "Comment Poster Last Name" text,
	  "Comment Poster Country" text
);

COPY cocreation_merge
from '<input file>'
delimiter ','
csv header;

CREATE VIEW PE_view 
(
SELECT * 
from (
	SELECT row_number() over (partition by "User id") as user_id_num, * 
	from(
		SELECT  
		"User id"
		,"Event Number"
		,"Post"
		,"First Name"
		,"Last Name"	
		,"Country"
		, max(case when a2."Event Number" = 0 then "Post" end) over (partition by "User id" ) Introduction
		, max(case when a2."Event Number" = 1 then "Post" end) over (partition by "User id" )
			||E'\n\n'||max(case when a2."Event Number" = 1 and agg_str<> '' then agg_str else ' ' end) over (partition by "User id" )  Event_1
		, max(case when a2."Event Number" = 2 then "Post" end) over (partition by "User id" )
			||E'\n\n'||max(case when a2."Event Number" = 2 and agg_str<> '' then agg_str else ' ' end) over (partition by "User id" )  Event_2
		, max(case when a2."Event Number" = 3 then "Post" end) over (partition by "User id" )
			||E'\n\n'||max(case when a2."Event Number" = 3 and agg_str<> '' then agg_str else ' ' end) over (partition by "User id" )  Event_3
		from(
				SELECT
					 "User id"
					,"First Name"
					,"Last Name"	
					,"Country"
					,"Post"
					,"Event Number"
					,string_agg("Comment", E'\n\n' order by "Comment Id" ) as agg_str
					from ( 
						SELECT (case when "Event Num"='Intro' then '0' else "Event Num" end)::integer as "Event Number" , *  
						from cocreation_merge
						 )a1
				group by 1, 2, 3, 4, 5, 6
			)a2
		)a3 
	)a4 
where user_id_num = 1
)

CREATE TABLE PE_metadata (
	pid integer,
	Organization character varying,
	EmpSector character varying
)

--output file
COPY
(	
	SELECT a1.*, b1.*
		from PE_view a1 
		inner join PE_metadata b1
		on a1."User id" = b1.pid
	order by b1.pid
)
to '<output file>'
delimiter ','
csv header;
