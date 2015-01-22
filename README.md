# nest
somewhere to keep the odd config file.

## e, u

    #!/bin/sh
    
    if [ $# -eq 1 ]; then
        urxvt -e vim $1 &
    else
        echo "What? No file?"
    fi

    #!/bin/sh
    
    if [ $# -eq 1 ]; then
        ft=$(file -b --mime-type $1);
        if [ $ft = 'application/pdf' ]; then
            $HOME/a/zathura/install/bin/zathura -p /usr/lib/zathura $1 &
        else
            urxvt -e less -X $1 &
        fi;
    else
        echo "What? No file?"
    fi


## bash funs

    function t () {
            if [ -n "${1}" ] && [ -n "${2}" ]; then
                    ls -$2 $1
            else if [ -n "${1}" ]; then
                    ls -CF $1
            else
                    ls -CF
            fi fi
    }
    
    function h () {
            if [ -n "${1}" ] && [ -n "${2}" ]; then
                    cd $1
                    ls -$2
            else if [ -n "${1}" ]; then
                    cd $1
                    ls -CF 
            else
                    cd ~
            fi fi
    }
    
    function uh () {
        if [ -n "${1}" ]; then
            mkdir $1
            cd $1
        else
            echo "Too few args"
                fi 
    }
    
    function ff () {
        if [ -n "${1}" ] && [ -n "${2}" ]; then
            find $2 -name $1
        else if [ -n "${1}" ]; then
            find . -name $1
        else
            echo "Too few args"
        fi      
        fi      
    
    }
    
    function gp () {
            if [ $# -eq 1 ]; then
                    ps -ef | grep $1 
            else
                    echo 'an argument was expected'
            fi
    }
    
    function ge () {
            if [ $# -eq 1 ]; then
                    env | grep $1 
            else
                    echo 'an argument was expected'
            fi
    }




<!-- end -->
