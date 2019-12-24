#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ecelrc/students/rli3/Vivado/hls_projects/sobel_1212/solution1/.autopilot/db/a.g.bc ${1+"$@"}
