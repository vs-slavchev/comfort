Find and replace in all Python files:  
`find ./ -iname "*.py" -type f -exec sed -i 's/abc/XYZ/gi' {} \;`


Find matches in files, print filename and line number:  
`grep -IHnr "Text to find" .`
