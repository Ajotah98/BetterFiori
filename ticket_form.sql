select * from shell;
select 
    'form' as component,
    'create_ticket.sql' as action,
    'Ticket creation' as title,
    'Create ticket' as validate,
    'Clear' as reset;
select 
    'Ticket number' as label,
    'TICKETNUMBER' as name,
    6 as width;
select
    'Labor code' as label,
    'LABORCODE' as name,
    6 as width,
    'select' as type,
    (SELECT
    json_group_array(
            json_object(
                'label',laborcodeid || ' - ' || laborcodename,
                'value',laborcodeid
            )
        )) AS options
    FROM (
        SELECT laborcodeid, laborcodename
        FROM laborcodes
        ORDER BY laborcodeid
    ) AS ordered_laborcodes;
select 
    'Ticket description' as label,
    'TICKETDESC' as name,
    'textarea' as type;
select
    'Installation' as label,
    'INSTALLATION' as name,
    'select' as type,
    (select 
        json_group_array(
            json_object( 
                    'label',installationid || ' - ' || installationname,
                    'value',installationid
                )
            )
        ) as options
        from 
        INSTALLATIONS;
select
    'Date of creation' as label,
    'DATEOFCREATION' as name,
    'date' as type;
