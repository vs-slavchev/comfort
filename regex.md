find groups: `^(.*),(.*),(.*)$`

replace using groups: `UPDATE tablename SET col1 = '\1', col2 = '{\2}' WHERE col3 = '\3';`
