#!/bin/bash

set -e
#Removeapotentiallypreexistingserver.pidforRails.

rm -f /apps/tmp/pids/server.pid
#Thenexecthecontainer'smainprocess(what'ssetasCMDintheDockerfile).

exec "$@"
