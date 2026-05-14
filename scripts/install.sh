#! /bin/bash
set -euox pipefail

dnf5 install -y neovim
dnf5 copr enable -y atim/starship
dnf5 install -y starship
dnf5 install -y @virtualization
curl -L https://downloads.1password.com/linux/rpm/stable/x86_64/1password-latest.rpm  -o /tmp/1password.rpm
rpm -i /tmp/1password.rpm
