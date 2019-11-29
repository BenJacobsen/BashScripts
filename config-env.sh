while getopts "s:l:" op; do
    case "${op}" in
        s)
            if [[ ! -f $source_dir/list_nav.txt ]] ; then
                touch $source_dir/list_nav.txt
            fi
            if [ -d "${OPTARG}" ]; then
                new_dir="${OPTARG}"
            else
                echo "ERROR: ${OPTARG} is not a directory" 1>&2
            fi
        ;;
        l)
            if [[ -f $source_dir/list_nav.txt ]] && [[ $(wc -l $source_dir/list_nav.txt | awk '{ print $1 }') != '0' ]] ; then
                echo "KEYWORD   DIRECTORY"
                cat $source_dir/list_nav.txt
            else
                echo "WARNING: no keywords have been set"
            fi
        ;;
        *)
            echo "Usage: . $0 [-s dir] [-l list] [keyword]" 1>&2 
    esac
done