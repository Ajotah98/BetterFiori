UPDATE shell SET layout = 'horizontal'
RETURNING 'redirect' as component,
'/' as link;