#!/usr/bin/env bash
# nav is used to cd to manage and use keywords that are associated with directories
# remember: (1) run in source  (2) reserve -* for options
# use:
# . nav.sh [keyword] - go to dir of keyword
# . nav.sh -s [keyword] [dir] - set keyword and dir in nav.txt
# . nav.sh -l - list all keywords and corresponding dirs
while getopts "s:l:" op; do
    case "${op}" in
        s)
            DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
            if [[ ! -f $DIR/nav.txt ]] ; then
                touch $DIR/nav.txt
            fi
        ;;
        l)
        ;;
        *)
            echo "Usage: . $0 [-s dir] [-l list] [keyword]" 1>&2 
    esac
done