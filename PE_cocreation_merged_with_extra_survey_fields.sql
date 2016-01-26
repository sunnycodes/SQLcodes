drop table PE_metadata;

Create table PE_metadata
(
	pid character varying
	,email character varying
	,Organization character varying
	,EmpSector character varying
	,q01 character varying
	,q02_1 character varying
	,q02_2 character varying
	,q02_3 character varying
	,q02_4 character varying
	,q02_5 character varying
	,q02_6 character varying
	,q02_7 character varying
	,q03_1 character varying
	,q03_2 character varying
	,q03_3 character varying
	,q03_4 character varying
	,q03_5 character varying
	,q03_6 character varying
	,q03_7 character varying
	,q03_8 character varying
	,q03_8_TEXT character varying
)
copy PE_metadata
from '/Users/sunnypiya/Desktop/SAB_ops/PerkingElmer_start_metadata.csv'
delimiter ','
csv header;

drop table PE_metadata_refield;
create table PE_metadata_refield
(
	pid character varying
	,email character varying
	,Organization character varying
	,EmpSector character varying
	,q03_1 character varying
	,q03_2 character varying
	,q03_3 character varying
	,q03_4 character varying
	,q03_5 character varying
	,q03_6 character varying
	,q03_7 character varying
	,q03_8 character varying
	,q03_8_TEXT character varying
)

copy PE_metadata_refield
from '/Users/sunnypiya/Desktop/SAB_ops/PerkingElmer_start_metadata_refield.csv'
delimiter ','
csv header;

copy
(
SELECT b1.*
	, b2.Organization
	, b2.EmpSector
	, first_field_Chromatography
	, combined_field_Brand 
	--, concat_ws(', ',q02_1,q02_2,q02_3,q02_4,q02_5,q02_6,q02_7) as Chromatography 
	--,concat_ws(', ',q03_1,q03_2,q03_3,q03_4,q03_5,q03_6,q03_7,q03_8) as Brand
	from PE_view b1 
	inner join --PE_metadata b1
		(
			select 
			a1.pid
			, a1.Organization
			, a1.EmpSector
			--, a2.pid
			, concat_ws(', ',a1.q02_1,a1.q02_2,a1.q02_3,a1.q02_4,a1.q02_5,a1.q02_6,a1.q02_7) as first_field_Chromatography 
			, concat_ws(', ',a1.q03_1,a1.q03_2,a1.q03_3,a1.q03_4,a1.q03_5,a1.q03_6,a1.q03_7,a1.q03_8, a2.q03_1,a2.q03_2,a2.q03_3,a2.q03_4,a2.q03_5,a2.q03_6,a2.q03_7,a2.q03_8) as combined_field_Brand
			--, concat_ws(', ',a1.q03_1,a1.q03_2,a1.q03_3,a1.q03_4,a1.q03_5,a1.q03_6,a1.q03_7,a1.q03_8) as a1_Brand
			--, concat_ws(', ',a2.q03_1,a2.q03_2,a2.q03_3,a2.q03_4,a2.q03_5,a2.q03_6,a2.q03_7,a2.q03_8) as a2_Brand
			from PE_metadata a1
			left outer join PE_metadata_refield a2
			on a1.pid = a2.pid
		)b2
	on b1."User id" = b2.pid::integer
order by b2.pid::integer
)
to '/users/sunnypiya/desktop/SAB_Ops/per_finish_new.csv'
delimiter ','
csv header;
