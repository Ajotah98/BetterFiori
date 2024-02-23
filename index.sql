select * from shell;

select 
    'alert'  as component,
    case
        when (SELECT EXISTS (SELECT 1 FROM REPORTS WHERE DATEOFREPORT >= DATE('now', '-1 day'))) then 'Success'
        else 'Error'
    end as title,
    case
        when (SELECT EXISTS (SELECT 1 FROM REPORTS WHERE DATEOFREPORT >= DATE('now', '-1 day'))) then 'You had reported yesterday.'
        else 'You hadn''t reported yesterday!!!'
    end as description,
    case
        when (SELECT EXISTS (SELECT 1 FROM REPORTS WHERE DATEOFREPORT >= DATE('now', '-1 day'))) then 'check'
        else 'alert-circle'
    end as icon,
    case
        when (SELECT EXISTS (SELECT 1 FROM REPORTS WHERE DATEOFREPORT >= DATE('now', '-1 day'))) then 'green'
        else 'red'
    end as color;

select  'card' as component;
select 
    'Last date reported:' as title,
    case
        when (SELECT DATEOFREPORT FROM REPORTS ORDER BY DATEOFREPORT DESC LIMIT 1) IS NULL then 'Not reported yet.'
        else (SELECT DATEOFREPORT FROM REPORTS ORDER BY DATEOFREPORT DESC LIMIT 1) end
    as description,
    '24-hours' as icon,
    'blue' as color;
select 
    'Reported hours/year (starting from 22/02/2024): ' as title,
    (SELECT
        SUM(
            (strftime('%s', EXITTIME) - strftime('%s', ARRIVALTIME)) / 3600.0
        ) AS TotalReportedHours FROM REPORTS)
    as description,
    'report' as icon,
    'yellow' as color;
select 
    'Open tickets' as title,
    (select count(*) from tickets where ISCLOSED is FALSE) as description,
    'mail-opened' as icon,
    'orange' as color;
select 
    'Number of completed tickets' as title,
    (select count(*) from tickets where ISCLOSED is TRUE) as description,
    'number' as icon,
    'green' as color;

