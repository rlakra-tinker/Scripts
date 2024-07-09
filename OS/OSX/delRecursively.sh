#!/bin/bash
# Author: Rohtash Lakra
# Removes the spam/unwanted file(s) recursively.
# Usage:
#   ./delRecursively
clear
echo
HOME_DIR=$PWD
echo
echo "Analyzing ${HOME_DIR} ..."
echo
fileExtensions=".DS_Store __pycache__"
for entry in $fileExtensions
do
    filePath="${HOME_DIR}/${entry}"
    # Folders
    echo "Analyzing '${filePath}' ..."
    echo    
    if [[ "${entry:0:1}" == "." ]]; then
        # Files
        echo "Removing '${entry}' file(s) recursively ..."
        echo
        # find . -type f -name "${entry}" -print -exec echo {} \;
        find . -type f -name "${entry}" -print -exec rm -rf {} \;
        echo
    # elif [[ "${entry}" =~ *"/venv/"* ]]; then
    #     # venv
    #     echo
    #     echo "Ignoring '${entry}' ..."
    #     echo
    else
        # Folders
        echo "Removing '${filePath}' folder ..."
        echo
        find . -type d -name "${entry}" -print -exec echo {} \;
        # find . -type d -name "$1" -print -exec rm -rf {} \;
        # find . -type d -depth 4 -name "${entry}" -print;    
        echo
    fi
done
echo


