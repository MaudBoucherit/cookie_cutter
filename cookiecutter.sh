#!/bin/sh
# Create a new project repo and push to a new github repo from the command line.
# Maud Boucherit - 2017-11-17

# Ask for information about you and your project
read -p "Enter your full name: " full_name
read -p "Enter github repository name: " repo_name
read -p "Enter pretty project name: " project_name
read -p "Enter project short description: " project_short_description
read -p "Enter released date (yyyy-mm-dd format): " release_date
read -p "Copy/paste the link from github repo: " github_path

# Create and initialize a local directory as a Git repository.
git clone  "$github_path"
cd ./$repo_name/
git init

# Create a README.md file with general information about the project
echo "# $project_name
$project_short_description

Author: $full_name
Released on $release_date" > README.md

# Create a LICENSE.md file
year=$(echo $release_date| cut -d'-' -f 1)
echo "Copyright $year $full_name

Permission is hereby granted, free of charge, to any person obtaining a copy of this project
and associated documentation files, to deal in the project without restriction, including
without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the project, and to permit persons to whom the project is furnished to
do so, subject to the following conditions:
- The above copyright notice and this permission notice shall be included in all copies or
substantial portions of the project." > LICENSE.md

# Create a data directory for the raw data
mkdir "data"
cd ./data/
touch foo.md
cd ..

# Create a src directory for the scripts
mkdir "src"
cd ./src/
touch foo.md
cd ..

# Create a results directory for files generated during cleanup and analysis
mkdir "results"
cd ./results/
touch foo.md
cd ..

# Commit and push to github
git add *
git commit -m "First commit"
git push origin master
