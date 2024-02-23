select
    'chart' as component,
    'bar' as type,
    '' as title,
    TRUE as labels,
    TRUE as toolbar;
select 
	i.INSTALLATIONNAME as x,
	sum(((strftime('%s', EXITTIME) - strftime('%s', ARRIVALTIME)) / 3600.0)) as y 
	from reports r
	join TICKETS t on t.TICKETID = r.TICKETID
	join INSTALLATIONS i on i.INSTALLATIONID = t.INSTALLATION
	group by i.INSTALLATIONID ;