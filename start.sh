#!/usr/bin/env bash
shopt -s dotglob

for ARGUMENT in "$@"; do
    if [ "$ARGUMENT" == "--disable-marketplace" ] ; then
        export EXTENSIONS_GALLERY='{"serviceUrl": ""}'
    fi
done

if [ "${CODETOGETHER_ENABLED}" == "true" ]; then
    CODETOGETHER_ENABLED_ARG="--enable-proposed-api=genuitecllc.codetogether"
else
    CODETOGETHER_ENABLED_ARG=""
fi

exec \
code-server \
--disable-update-check \
--auth none \
"${CODETOGETHER_ENABLED_ARG}" \
--bind-addr 0.0.0.0:"${CROWNLABS_LISTEN_PORT}" \
--user-data-dir /config/data \
--extensions-dir /config/extensions \
--disable-telemetry \
--new-window \
/home/crownlabs/os161/os161-base-2.0.3/kern
