SELECT
    'chart' as component,
    'bar' as type,
    '' as title,
    TRUE as labels,
    TRUE as toolbar;
select 
	l.LABORCODEID ||' - '||l.LABORCODENAME as x,
	sum(((strftime('%s', EXITTIME) - strftime('%s', ARRIVALTIME)) / 3600.0)) as y 
	from reports r
	join TICKETS t on t.TICKETID = r.TICKETID
	join LABORCODES l on l.LABORCODEID = t.LABORCODE
	group by l.LABORCODENAME ;