#!/bin/bash
sourceBase=$(dirname "$SOURCE")/../
cd "${basedir:-$sourceBase}"

basedir="$(pwd -P)"

log_info() {
    echo -e "\033[0;35m-\033[0;36m=\033[0;35m-\033[0m $1"
}

log_warning() {
    echo -e "\033[0;35m-\033[0;33m=\033[0;35m-\033[0m $1"
}

log_error() {
    echo -e "\033[0;35m-\033[0;31m=\033[0;35m-\033[0m $1"
}

function cleanupPatches {
    cd "$1"
    for patch in *.patch; do
        diffs=$(git diff --staged "$patch" | grep --color=none -E "^(\+|-)" | grep --color=none -Ev "(--- a|\+\+\+ b|^.index)")

        if [ "x$diffs" == "x" ] ; then
            git reset HEAD $patch >/dev/null
            git checkout -- $patch >/dev/null
        fi
    done
}

function basedir {
    cd "$basedir"
}

function gethead {
    (
        cd "$1"
        git log -1 --oneline
    )
}
