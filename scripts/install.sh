#! /bin/bash
set -euox pipefail

dnf5 install -y neovim
dnf5 copr enable -y atim/starship
dnf5 install -y starship

