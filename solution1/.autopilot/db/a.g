#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/chathura/backsub_maxi/solution1/.autopilot/db/a.g.bc ${1+"$@"}
