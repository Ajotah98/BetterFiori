select * from shell;
INSERT INTO TICKETS (TICKETNUMBER, TICKETDESC,LABORCODE,DATEOFCREATION,INSTALLATION) VALUES (
    :TICKETNUMBER,
    :TICKETDESC,
    :LABORCODE,
    :DATEOFCREATION,
    :INSTALLATION
)
RETURNING
    'alert'   as component,
    'Success' as title,
    'Ticket created correctly.' as description,
    'check'   as icon,
    'green'   as color;