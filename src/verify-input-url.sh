#!/bin/bash

source "$TEMP_ACTION_DIRECTORY/utils/muna.sh"

url=$(printf "%s" "$INPUT_GIT_REPO_URL")
unredirector 
if [ ! -z "$url" ];then  #yup, that url exists
     echo "::set-output name=target-url::$(echo $url)"
else
    echo "URL provided was not reachable."
    exit 1
fi  