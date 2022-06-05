#!/usr/bin/env bash
shopt -s dotglob

for ARGUMENT in "$@"; do
    if [ "$ARGUMENT" == "--disable-marketplace" ] ; then
        export EXTENSIONS_GALLERY='{"serviceUrl": ""}'
    fi
done

exec \
code-server \
--disable-update-check \
--auth none \
--bind-addr 0.0.0.0:5000 \
--user-data-dir /config/data \
--extensions-dir /config/extensions \
--disable-telemetry \
--new-window \
/home/os161user/os161/os161-base-2.0.3/kern
