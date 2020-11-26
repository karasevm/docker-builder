#!/bin/bash
set -e

read -p "Enter github url in https://github.com/{USERNAME}/{REPOSITORY}.git format: " url

git clone $url
project_name=$(basename "$url" ".${url##*.}")
cd $project_name

read -p "Enter docker hub username: " username
docker login -u "$username"
docker build . -t "$username/$project_name"
docker push "$username/$project_name"
