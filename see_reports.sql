select * from shell;
select
    'title' as component,
    'Ticket: ' || ticketnumber || ' - ' || ticketdesc  as contents,
    3 as level
from tickets where ticketnumber = $ticket ;
select 
    'table' as component,
    TRUE as sort,
    TRUE as search;
SELECT 
    ACTIVITY,
    DATEOFREPORT,
    BILLINGCODE,
    ARRIVALTIME,
    EXITTIME
FROM REPORTS r
JOIN TICKETS t on t.TICKETID = r.TICKETID
where t.TICKETNUMBER = $ticket;
