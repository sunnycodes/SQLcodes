-------------------------------------------------------------
---- Conver time fields into 'timestamp' data type
-------------------------------------------------------------

select aa
, "UserType"
, "account_status"
, * from (
	select 
	"CreationDate"
	 "CreationDate"::timestamp aa
	 , "last_incidence_date"
	 , "last_incidence_date"::timestamp bb
	 , *--from sab_dir_raw_asci
--"Email", "email"
--"TT - Chromatography" , "TT - Chromatography_2" ,
--"TT - Genotyping"  , "TT - Genotyping_2" ,
--"TT - Immunohistochemistry" , "TT - Immunohistochemistry_2" 
--"Phone", "Phone_2",
--"ExternalDataReference" , "ExternalDataReference_2" 
	from sab_dir_raw_asci
	where last_incidence_date is null
	)a1
order by 1--"last_incidence_date"
--"Phone" <> "Phone_2"
--"ExternalDataReference" <> "ExternalDataReference_2" 
--where "Email" in ('xjin@ips.ac.cn','gaobochina@163.com');

------------------------------------------------------------
--Total number of SAB members by emp sector and job title
------------------------------------------------------------
select 
  "account_status"
, "Employment Sector"
, "Job Position"
, count(*) 
from sab_dir_raw_asci
where "account_status" in ('Active', 'Unknown')
group by 1, 2, 3
order by 4 desc, 2, 3;

-------------------------------------------------------------
----Suspect fields in the SAB directory
-------------------------------------------------------------
select 
	"Link/Search Terms" 
	,"MissingInfo"
	,"Needs AutoConverted" 
	,"Number of Beds" 
	,"Legacy_PRDB" 
	,"Conversion to SAB" 
	,"Core"
	,"Country" 
	,"Customer List" 
	,"15-102 IUPAC Scrape 6/22/15" 
	,"Temp_project_flag9" 
	,"temp-tag-15-170" 
	,"temp_project_flag" 
	,"temp_project_flag10" 
	,"temp_project_flag2" 
	,"temp_project_flag3" 
	,"temp_project_flag4" 
	,"temp_project_flag5" 
	,"temp_project_flag6" 
	,"temp_project_flag7" 
	,"temp_project_flag8" 
	,"temp_project_flag9" 
	,"temp_projectflag10" 
	,"temp_projectflag3" 
	,"temp_projectflag4" 
	,"Recruitment Note" 
	,"Recruitment Notes" 
	,"Recruitment Tag" 
	,"ReferredByName" 
	,"ReferredByPID" 
	,"RemoveTTs" 
from sab_dir_raw_asci



