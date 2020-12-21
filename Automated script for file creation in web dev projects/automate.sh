#! /bin/bash

progress-bar () {
	sp='| / - \'
	echo -n ' '
	for i in {1..20}; do
	    printf "\b${sp:i++%${#sp}:1}"
	    sleep 0.1
	done
}

echo "Enter Your Project Name: "
read project_name

progress-bar

# creating root folder
mkdir $project_name 
cd $project_name

# creating Html folder
mkdir Html
cd Html
cat ../../html_template.html > index.html
cd ..

# creating CSS folder
mkdir CSS
cd CSS
cat ../../css_template.css > styles.css
cd ..

# creating Javascript folder
mkdir JavaScript
cd JavaScript
touch js.script 
cd ..

# creating Data folder
mkdir Data

echo "File Structure Created Successfully"

#display the folders and files created
find . | sed -e "s/[^-][^\/]*\// |/g" -e "s/|\([^ ]\)/|-\1/"
