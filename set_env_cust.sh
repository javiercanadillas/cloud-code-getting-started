# shellcheck shell=bash
#!/usr/bin/false
###   THIS SCRIPT IS WRITTEN TO BE SOURCED   ###
### Execute it like source ./set_env_cust.sh ###

## Vars
CUST_FILENAME=".customize_environment"
REPO_NAME="cloud-code-getting-started"
LOCAL_BIN_DIR="${HOME}/bin"
SCRIPTS_PATH="$HOME/$REPO_NAME/scripts"
EXTRA_BASH_PROFILE_NAME=".bash_profile_local"
DOTFILES_LOC="${HOME}/.dotfiles"

## Check Cloud Shell
check_cloud_shell(){
  if [ "$CLOUD_SHELL" != true ] ; then
    echo "Please, run this script in Cloud Shell" ; exit 1
  fi
}

## Install Bat, an improved and colorful cat, in $LOCAL_BIN_DIR
## $LOCAL_BIN_DIR is added to $PATH by .bash_profile
install_bat(){
  local -r BAT_REPO_URL="https://github.com/sharkdp/bat/releases/download/v0.18.3/bat-musl_0.18.3_amd64.deb"
  command -v wget >/dev/null  2>&1 && wget "${BAT_REPO_URL}"
  sudo dpkg -i ./*.deb
  mkdir -p "${LOCAL_BIN_DIR}"
  command -v batcat >/dev/null  2>&1 && ln -s /usr/bin/batcat "${LOCAL_BIN_DIR}/bat" 
  rm ./*.deb
}

## Copy Cloud Shell customization scripts
## and source them
copy_source_scripts(){
  ## Enable bash powerline prompt
  mkdir -p "$DOTFILES_LOC"
  # Copy and source shell login customization scripts
  cp "$SCRIPTS_PATH/prompt" "$DOTFILES_LOC"
  cp "$SCRIPTS_PATH/$CUST_FILENAME" "$HOME"
  cp "$SCRIPTS_PATH/.bash_profile" "$HOME"
  cp "$SCRIPTS_PATH/$EXTRA_BASH_PROFILE_NAME" "$HOME"
  # shellcheck source=/dev/null
  MINIKUBE_IN_STYLE=false
  source "${HOME}/${CUST_FILENAME}"
  # shellcheck source=/dev/null
  source "${HOME}"/.bash_profile
}

main(){
  check_cloud_shell
  install_bat
  copy_source_scripts
}

main "$@"