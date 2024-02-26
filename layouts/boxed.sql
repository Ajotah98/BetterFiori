UPDATE shell SET layout = 'boxed'
RETURNING 'redirect' as component,
'/' as link;