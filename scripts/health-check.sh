#!/bin/bash

echo "Repository health check"
echo "======================="
echo

echo "Current branch:"
git branch --show-current

echo
echo "Latest commits:"
git log --oneline -5

echo
echo "Working tree status:"
git status --short

echo
echo "Tracked files count:"
git ls-files | wc -l
