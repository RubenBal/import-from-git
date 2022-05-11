#!/bin/bash

work_dir=$(pwd)

tmp_dir=$(mktemp -d -t git-import-action-XXXXXXXXXX)

echo "Created Temp dir: $tmp_dir"

cd $tmp_dir
echo "Checking out '$TARGET_GIT_REPO'"
git clone "$TARGET_GIT_REPO"

repo_root=$(echo */)
repo_dir=$tmp_dir'/'$repo_root

echo "::set-output name=temp-dir::$(echo $tmp_dir)"
echo "::set-output name=repo-root::$(echo $repo_root)"
echo "::set-output name=repo-dir::$(echo $repo_dir)"

echo $"Repo Cloned at: '$repo_dir'"

cd $work_dir