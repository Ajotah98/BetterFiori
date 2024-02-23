select * from shell;
select 
    'form' as component,
    'create_report.sql' as action,
    'Report creation' as title,
    'Create report' as validate,
    'Clear' as reset;
select 
    'Ticket number' as label,
    'TICKETID' as name,
    'select' as type,
    (select json_group_array(
            json_object(
                'label', ticketnumber || ' - ' || ticketdesc,
                'value', ticketid
                )
        )
    ) as options
from TICKETS;
select 
    'Activity code' as label,
    'ACTIVITY' as name;
select 
    'Billing code' as label,
    'BILLINGCODE' as name,
    'select' as type,
    (select json_group_array(
            json_object(
                'label', billingcodeid || ' - ' || billingcode,
                'value', billingcodeid
                )
        )
    ) as options
from BILLINGCODES;
select 
    'Date of report' as label,
    'DATEOFREPORT' as name,
    'date' as type;
select 
    'Arrival time' as label,
    'ARRIVALTIME' as name,
    'HH:MM' as placeholder,
    6 as width;
select 
    'Exit time' as label,
    'EXITTIME' as name,
    'HH:MM' as placeholder,
    6 as width;

