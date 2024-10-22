#!/bin/sh

CONFIG_REPO_DIR=$HOME/git/dev-ex-config

NVIM_DIR=$HOME/.config/nvim/
ZSH_CONFIG=$HOME/.zshrc
IDEAVIM_CONFIG=$HOME/.ideavimrc
STARSHIP_CONFIG=$HOME/.config/starship.toml

if [[ $1 == "pull" ]]; then
  echo "Pulling configs into dev-ex repo"
  rm -rf "${CONFIG_REPO_DIR}/nvim/"
  mkdir -p "${CONFIG_REPO_DIR}/nvim/"
  cp -r ${NVIM_DIR} "${CONFIG_REPO_DIR}/nvim/"
  cp $ZSH_CONFIG $CONFIG_REPO_DIR
  cp $IDEAVIM_CONFIG $CONFIG_REPO_DIR
  cp $STARSHIP_CONFIG $CONFIG_REPO_DIR
  cd $CONFIG_REPO_DIR
  brew bundle dump --force
elif [[ $1 == "push" ]]; then
  echo "Pushing configs into relevant dirs"
  cp -r "${CONFIG_REPO_DIR}/nvim/*" $NVIM_DIR
  cp "${CONFIG_REPO_DIR}/.zshrc" $ZSH_CONFIG
  cp "${CONFIG_REPO_DIR}/.ideavimrc" $IDEAVIM_CONFIG
  cp "${CONFIG_REPO_DIR}/starship.toml" $STARSHIP_CONFIG
  cd $CONFIG_REPO_DIR
  brew bundle install --file Brewfile
else
  echo "Invalid arg, could not find pull or push"
fi
