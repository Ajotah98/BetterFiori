UPDATE shell SET layout = 'fluid'
RETURNING 'redirect' as component,
'/' as link;