#!/bin/bash
# Author: Rohtash Lakra
# Generates the local links for the major scripts
#

# ----------------< Variables >----------------
export CUR_DIR="${PWD}"
export USER_HOME="${HOME}"
export APPS_DIR="/Applications"
export WORKSPACE="${USER_HOME}/Workspace"
export SCRIPTS="${WORKSPACE}/Scripts"
export BUILD_TOOLS="${SCRIPTS}/BuildTools"
export MY_OS_CONFIGS="${SCRIPTS}/MyOSConfigs"
export OSX_DIR="${SCRIPTS}/OS/OSX"
export GIT_DIR="${SCRIPTS}/VCS/Git"

# ----------------< Tweek Paths >----------------
echo
#echo "${WORKSPACE} not found or is symlink to $(readlink -f ${WORKSPACE})."

# Check the Workspaces folder is under documents or not.
# if [ ! -d "${WORKSPACE}" -a ! -h "${WORKSPACE}" ]; then 
#     SCRIPTS="${SCRIPTS}"
# fi
echo "SCRIPTS: ${SCRIPTS}"
echo

# ----------------< Generate Symbolic Links >----------------

# ----------------< OSX Links >----------------
ln -sf "${OSX_DIR}/checkPortUsage.sh" ~/checkPortUsage
ln -sf "${OSX_DIR}/delFilesRecursively.sh" ~/delFilesRecursively
ln -sf "${OSX_DIR}/showComputerName.sh" ~/showComputerName
# ln -sf "${OSX_DIR}/delRecursively.sh" ~/delRecursively

# ----------------< Git Links >----------------
ln -sf "${GIT_DIR}/addSSHKeys.sh" ~/addSSHKeys
ln -sf "${GIT_DIR}/logGitCommits.sh" ~/logGitCommits
ln -sf "${GIT_DIR}/removeBranch.sh" ~/removeGitBranch
ln -sf "${GIT_DIR}/syncBranches.sh" ~/syncBranches
ln -sf "${GIT_DIR}/syncBranchWithRemote.sh" ~/syncBranchWithRemote
ln -sf "${GIT_DIR}/tagBranch.sh" ~/tagGitBranch

# ----------------< Variables >----------------

# ----------------< syncroSVNClient Links >----------------
# Generate syncroSVNClient Link
# brew install openjdk@11
# sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
#
SYNCRO_SVN_CLIENT="${APPS_DIR}/syncroSVNClient"
ln -sf "${SYNCRO_SVN_CLIENT}/diffDirsMac.sh" ~/diffFolders

# move back to current dir
cd $CUR_DIR
echo

