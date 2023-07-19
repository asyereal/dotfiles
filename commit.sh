#!/usr/bin/env bash

# Add changes to git.
git add -A

# Commit changes.
git commit -m "$1"

# Push source and build repos.
git push -u origin main
