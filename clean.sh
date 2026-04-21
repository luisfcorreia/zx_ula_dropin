#!/bin/bash
# cleanup
set -o pipefail
MODULE=ula_zx48k
shopt -s extglob
rm -rf !(build.sh|clean.sh|$MODULE.prj|$MODULE.ucf|$MODULE.xst|$MODULE.v|*.md)
