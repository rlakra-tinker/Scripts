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

# --------<Tweak Paths, if needed>--------
echo
#echo "${WORKSPACE} not found or is symlink to $(readlink -f ${WORKSPACE})."

# Check the Workspaces folder is under documents or not.
if [ ! -d "${WORKSPACE}" -a ! -h "${WORKSPACE}" ]; then
   WORKSPACE="${CUR_DIR}/Workspace"
fi
echo "WORKSPACE: ${WORKSPACE}"
# Check the Workspaces folder is under documents or not.
if [ ! -d "${SCRIPTS}" -a ! -h "${SCRIPTS}" ]; then
   SCRIPTS="${CUR_DIR}"
fi
echo "SCRIPTS: ${SCRIPTS}"
echo

# ----------------<Generate Symbolic Links>----------------

# ----------------<AWS Links>----------------
export AWS_DIR="${SCRIPTS}/AWS"
ln -fs "${AWS_DIR}/sshInstance.sh" ~/sshInstance

# ----------------<BuildTools Links>----------------
export BUILD_TOOLS="${SCRIPTS}/BuildTools"
ln -fs "${BUILD_TOOLS}/Homebrew/installHomebrew.sh" ~/installHomebrew

# ----------------<Docker Links>----------------
export DOCKER_DIR="${SCRIPTS}/Docker"
ln -fs "${DOCKER_DIR}/buildDockerImage.sh" ~/buildDockerImage
ln -fs "${DOCKER_DIR}/listDockerImages.sh" ~/listDockerImages
ln -fs "${DOCKER_DIR}/sshDockerImage.sh" ~/sshDockerImage

# ----------------<Git Links>----------------
export GIT_DIR="${SCRIPTS}/VCS/Git"
ln -fs "${GIT_DIR}/addSSHKeys.sh" ~/addSSHKeys
ln -fs "${GIT_DIR}/logGitCommits.sh" ~/logGitCommits
ln -fs "${GIT_DIR}/removeBranch.sh" ~/removeGitBranch
ln -fs "${GIT_DIR}/syncBranches.sh" ~/syncBranches
ln -fs "${GIT_DIR}/syncBranchWithRemote.sh" ~/syncBranchWithRemote
ln -fs "${GIT_DIR}/tagBranch.sh" ~/tagGitBranch

# ----------------<MyOSConfigs Links>----------------
export MY_OS_CONFIGS="${SCRIPTS}/MyOSConfigs"
ln -fs "${MY_OS_CONFIGS}/backUpLocalConfigs.sh" ~/backUpLocalConfigs

# ----------------<OSX Links>----------------
export OSX_DIR="${SCRIPTS}/OS/OSX"
ln -fs "${OSX_DIR}/checkPortUsage.sh" ~/checkPortUsage
ln -fs "${OSX_DIR}/showComputerName.sh" ~/showComputerName
ln -fs "${OSX_DIR}/delRecursively.sh" ~/delRecursively

# ----------------<Variables>----------------

# ----------------<syncroSVNClient Links>----------------
# Generate syncroSVNClient Link
# brew install openjdk@11
# sudo ln -fs /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
#
SYNCRO_SVN_CLIENT="${APPS_DIR}/syncroSVNClient"
ln -fs "${SYNCRO_SVN_CLIENT}/diffDirsMac.sh" ~/diffFolders

# move back to current dir
cd $CUR_DIR
echo
