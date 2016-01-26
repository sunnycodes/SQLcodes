select * from
(select count(*) OVER (partition by no_period_before_at ORDER BY no_period_before_at) as total_row_nums
,row_number() OVER (partition by no_period_before_at ORDER BY no_period_before_at) as row_nums, no_period_before_at, before_at, primary_email from
(select replace(before_at, '.', '') as no_period_before_at, before_at, primary_email from
(select 
primary_email
, split_part(primary_email,  '@', 1) as before_at
, split_part(primary_email,  '@', 2) as after_at
from 
(select "Email" as primary_email from sab_dir_raw_asci_organized) a1)a2
where after_at = 'gmail.com')a3)a4
where total_row_nums <> 1