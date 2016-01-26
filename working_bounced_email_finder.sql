copy EU_Dec
from '/Users/sunnypiya/Desktop/mergefolder/EU_Dec_PANEL.csv'
delimiter ','
csv header;

copy
(
select distinct "Email" from (
select * from (select count(*) over (partition by "Email") as "Email_ct", * from -------where status = 'email failed'
((select 'June' as monthly, "Email" from EU_June where "Status" = 'Email Bounced' group by 1, 2)
UNION ALL
(select 'Dec'as monthly, "Email" from EU_Dec where "Status" = 'Email Bounced' group by 1, 2)) a1)a2
where a2."Email_ct" > 1) a3
order by 1
)
to '/users/sunnypiya/desktop/EU_rebounced_email.csv'
delimiter ','
csv header;

select * from EU_Dec where "Status" = 'Email Bounced'