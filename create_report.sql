select * from shell;
INSERT INTO REPORTS (DATEOFREPORT,BILLINGCODE,ACTIVITY,ARRIVALTIME,EXITTIME,TICKETID) VALUES (
    :DATEOFREPORT,
    :BILLINGCODE,
    :ACTIVITY,
    :ARRIVALTIME,
    :EXITTIME,
    :TICKETID
)
RETURNING
    'alert'   as component,
    'Success' as title,
    'Report created correctly.' as description,
    'check'   as icon,
    'green'   as color;