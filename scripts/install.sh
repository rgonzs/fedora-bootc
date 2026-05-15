#! /bin/bash
set -euox pipefail
rmdir /opt && ln -s -T /var/opt /opt
dnf5 install -y neovim
dnf5 copr enable -y atim/starship
dnf5 install -y starship
dnf5 install -y @virtualization
rpm --import https://downloads.1password.com/linux/keys/1password.asc
echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo
dnf5 install -y 1password
