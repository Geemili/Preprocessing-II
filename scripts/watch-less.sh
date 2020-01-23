#!/usr/bin/env sh

printf "!! This script should be run from the root of the git repository! !!\n"

nix-shell --run "
    # Rebuild index.less whenever any .less file changes
    fd -e less . less/ | entr -c lessc less/index.less css/index.css --source-map
"
