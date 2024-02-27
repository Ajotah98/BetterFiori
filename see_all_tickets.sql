select * from shell;
select 
    'table' as component,
    TRUE as sort,
    TRUE as search,
    'TICKET NUMBER' as markdown;
SELECT 
    '[' || TICKETNUMBER || '](see_reports.sql?ticket=' || TICKETNUMBER || ')' AS "TICKET NUMBER",
    TICKETDESC AS "TICKET DESCRIPTION",
    LABORCODE,
    DATEOFCREATION,
    INSTALLATION,
    CASE 
        WHEN ISCLOSED = 0 THEN 'OPEN'
        ELSE 'CLOSED'
    END AS "STATUS"
FROM tickets;
