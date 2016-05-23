# git-prompt

## Download with wget

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh 


## .bashrc

Add

    source ~/a/git-prompt/git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE=1

and $(__git_ps1 " %s") or similar to PS1, e.g.

    PS1=' \[\033[01;30m\]\w\[\033[01;35m\]$(hg_ps1)\[\033[01;36m\]$(__git_ps1 " %s")\[\033[00m\] '


### end
