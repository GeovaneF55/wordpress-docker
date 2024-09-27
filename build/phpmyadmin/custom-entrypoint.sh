#!/bin/sh

# Copy over the saved files
cp -r /tmp/themes/* /var/www/html/themes/

# Kick off the original entrypoint
exec /docker-entrypoint.sh "$@"
