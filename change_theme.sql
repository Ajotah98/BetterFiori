SET new_theme = (
    SELECT 
        CASE 
            WHEN theme = 'dark' THEN 'light'
            ELSE 'dark'
        END as new_theme
        from shell
);
UPDATE shell SET theme = $new_theme
RETURNING 'redirect' as component,
'/' as link;