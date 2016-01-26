select * from 
		(select count(*) over (partition by "Email") as "Email_ct", * from
			(
				(select 'June' as monthly, "Email" from NA_June where "Status" = 'Email Bounced' group by 1, 2) 
					UNION ALL
				(select 'Dec' as monthly, "Email" from NA_Dec where "Status" = 'Email Bounced' group by 1, 2) 
			) 
			a1)
		a2
where a2."Email_ct" > 1
order by 3