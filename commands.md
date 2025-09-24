Find and replace in all Python files:  
`find ./ -iname "*.py" -type f -exec sed -i 's/abc/XYZ/gi' {} \;`


Find matches in files, print filename and line number:  
`grep -IHnr "Text to find" .`


Find text and print next 50 lines:  
`grep -A50 "Error stacktrace:" txt.log`


Find text occurrences in all files (-r) in folder (.), print line number (-n):  
`grep -rn "text to find" .`


Copy file from server:  
`scp ubuntu@1.1.1.1:/home/v/txt.log ~/Downloads/txt.log`
