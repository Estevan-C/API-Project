
Skip to content
Pull requests
Issues
Marketplace
Explore
@Estevan-C
Mikescops /
ad.min
Public

1
12

    15

Code
Issues
Pull requests
Actions
Projects
Wiki
Security

    Insights

ad.min/build.sh
@Mikescops
Mikescops Improve Regex to select .php links
Latest commit c539a8e on Sep 17, 2018
History
1 contributor
executable file 24 lines (18 sloc) 464 Bytes
#!/bin/bash

# Build script for serving static content instead of php files

DEST="./public_html"
html=".html"

mkdir -p "$DEST/"

# Execute all php files and save them as html
for f in *.php; 
do
	php $f | sed 's:\(<a.*href=".*\)\.php\(".*</a>\):\1\.html\2:g' > "$DEST/${f/.php/$html}";
	echo "Processing $f into ${f/.php/$html}..";
done

#Copy all CSS files
for f in *.css; 
do
	cat $f > "$DEST/$f";
	echo "Processing $f file..";
done

echo "Process complete." ;

    © 2021 GitHub, Inc.
    Terms
    Privacy
    Security
    Status
    Docs

    Contact GitHub
    Pricing
    API
    Training
    Blog
    About

Loading complete
