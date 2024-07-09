#!/bin/bash
# Author: Rohtash Lakra
#
BRANCHES_HOME=$PWD
echo
echo "Syncing ${BRANCHES_HOME} ..."
echo
folders="tod-admin tod-backend tod-frontend tod-mobile-qa tod-quicksight tod-readme tod-versioning-poc tod-webhook"
#for entry in "${BRANCHES_HOME}"/*
for entry in $folders
do
  if [[ -d "$entry" ]]; then
      echo
      echo "${BRANCHES_HOME}/${entry}"
      cd "$entry"
      git reset --hard
      git config pull.ff only
      git pull
      cd ..
      echo
  #else
  #    echo "$entry is not a directory"
  fi
done
echo

