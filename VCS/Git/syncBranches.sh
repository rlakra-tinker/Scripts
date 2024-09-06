#!/bin/bash
# Author: Rohtash Lakra
#
CURR_DIR=$PWD
WORKSPACE_DIR="${HOME}/Workspace"
echo
echo "Syncing ${WORKSPACE_DIR} ..."
echo
folders="tod-admin tod-backend tod-frontend tod-iac tod-mobile-qa tod-quicksight tod-readme tod-versioning-poc tod-webhook"
for entry in $folders
do
  pathEntry="${WORKSPACE_DIR}/${entry}"
  if [[ -d "${pathEntry}" ]]; then
      echo
      echo "Syncing [${pathEntry}] ..."
      echo
      cd "$entry"
      git reset --hard
      git config pull.ff only
      git pull
      cd ..
      echo
  else
      echo "${pathEntry} is not a directory"
  fi
done
cd $CURR_DIR
echo

