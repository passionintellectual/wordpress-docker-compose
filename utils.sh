
#!/bin/bash
source ./bash-utils/ask-prompt.sh
source ./bash-utils/git-repo.sh

function callFunction {
    echo $0
    echo '==='
    
    echo "${@:2}"
    echo '***'
    
    if function_exists $1; then
        eval "$1 ${@:2}"
    else
        echo 'This function is not supported'
        usage
    fi
}

function isInstalled {
    # echo ' check if installed '$1
    eval "which $1 &> /dev/null"
    # if [ "$?" != 0 ]; then
    #   return 1
    # fi
    # return 0
}

function isRunning {
    # echo $1
    cmdToCheck=$1
    eval "$cmdToCheck &> /dev/null"
}


function_exists() {
    declare -f -F $1 > /dev/null
    return $?
}


function getAllComposeFilesCommand {
    dcPath=$1
    local toReturnCommand=""
    for entry in "$dcPath"/**/*
    do
        toReturnCommand="$toReturnCommand -f $entry"
    done
    
    echo $toReturnCommand
}


