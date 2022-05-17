#!/bin/bash
# TODO: Remove this file after labing options. 
# This is just a lazy to quickly reset the v1 tag instead of creating more tags

git tag -d v1
git push --delete origin v1
git tag -a -m "Initial Release" v1
git push --follow-tags