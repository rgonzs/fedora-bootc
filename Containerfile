FROM quay.io/fedora-ostree-desktops/kinoite:44

RUN --mount=type=bind,source=scripts,destination=/tmp/scripts \
    --mount=type=cache,destination=/var/cache/libdnf5 \
    --mount=type=cache,destination=/var/lib/dnf5 \
    --mount=type=cache,destination=/var/cache/ldconfig/aux-cache \
    --mount=type=tmpfs,destination=/run \
    --mount=type=tmpfs,destination=/tmp \
    --mount=type=tmpfs,destination=/var/log \
    /tmp/scripts/install.sh

RUN bootc container lint
