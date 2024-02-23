select
    'chart' as component,
    'area' as type,
    '' as title,
    TRUE as labels,
    TRUE as toolbar;
select 
    DATEOFREPORT as x,
    sum(((strftime('%s', EXITTIME) - strftime('%s', ARRIVALTIME)) / 3600.0)) as y 
    from reports
    group by DATEOFREPORT;
