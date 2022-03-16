#!/usr/bin/env bash
# Repo path

EXTRA_BASHRC=".bashrc_extra"
CUST_NAME=".customize_environment"
SCRIPTS_PATH="$HOME/dev-cloud-code/scripts"

# Copy Cloud Shell customization and launch it
cp "$SCRIPTS_PATH/$CUST_NAME" "$HOME"
./"$HOME/$CUST_NAME"

# Modify bashrc to include user-based customizations
cp "$SCRIPTS_PATH/$EXTRA_BASHRC" "$HOME/$EXTRA_BASHRC"
cat <<EOF >> $HOME/.bashrc
source "$HOME/$EXTRA_BASHRC"
EOF