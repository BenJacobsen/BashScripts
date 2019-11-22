#!/usr/bin/env bash
# nav is used to cd to manage and use keywords that are associated with directories
# remember: (1) run in source  (2) reserve -* for options
# use:
# . nav.sh [keyword] - go to dir of keyword
# . nav.sh -s [keyword] [dir] - set keyword and dir in nav.txt

if [[ ${$1:0:1} == "-" ]] ; then
    case ${$1:1:${#$1}-1} in
        s)
#            if [[ ! -f $PWD/nav.txt ]] ; then
#                touch $PWD/nav.txt
#            fi
            echo "-s"
        ;;
        *)
            echo "Unrecognized option"
        ;;
    esac
fi