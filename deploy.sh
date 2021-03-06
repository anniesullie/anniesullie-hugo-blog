#!/bin/sh

# From https://gohugo.io/hosting-and-deployment/hosting-on-github/

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public

# Make a .nojekyll file to properly serve files with underscores.
touch .nojekyll

# Compress all jpegs
for file in */*/*/images/*.jpg ;
  do jpegtran -outfile $file -optimise -copy none $file;
done

# Add changes to git.
git add .

# Commit changes.
echo "Please enter commit message"
read msg
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master