#!/usr/bin/bash

# Link the host's policies to sandbox
[ -d "/etc/chromium" ] || ln -s /run/host/etc/chromium /etc/chromium

exec cobalt "$@" --no-default-browser-check