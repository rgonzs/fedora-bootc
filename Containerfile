FROM quay.io/fedora-ostree-desktops/kinoite:44

RUN --mount=type=cache,destination=/var/cache/libdnf5 \
    --mount=type=cache,destination=/var/lib/dnf5 \
    --mount=type=cache,destination=/run \
    --mount=type=cache,destination=/tmp \
    --mount=type=tmpfs,destination=/var/log \
    <<EOF
set -euox pipefail

dnf5 install -y neovim
dnf5 copr enable atim/starship
dnf5 install starship

EOF

RUN bootc container lint
