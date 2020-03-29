export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=/usr/bin/vim

##History format
HIST_STAMPS="dd/mm/yyyy"

##local binaries
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

#mysql binaries
export PATH=/usr/local/mysql/bin:$PATH
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

#Java Home
export JAVA_HOME=$(/usr/libexec/java_home)

#Android
export ANDROID_HOME=/Users/diegocampos/Library/Android/sdk
export PATH=$PATH:/Users/diegocampos/tools
export PATH=$PATH:/Users/diegocampos/Library/Android/sdk/platform-tools:/Users/diegocampos/Library/Android/sdk/tools


#GO BINARIES
export PATH=/Users/diegocampos/go/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export GOPATH=/Users/diegocampos/go

## Oh-my-zsh
export ZSH="/Users/diegocampos/.oh-my-zsh"

## Zsh Theme
ZSH_THEME="robbyrussell"



## Composer
alias composer="php /usr/local/bin/composer.phar"


##delete all kubernetes resources
alias kubectldeleteall='kubectl delete "$(kubectl api-resources --namespaced=true --verbs=delete -o name | tr "\n" "," | sed -e 's/,$//')" --all'

## set docker env
alias dockerenv='eval $(docker-machine env -u)'


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"


plugins=(tmux)

source $ZSH/oh-my-zsh.sh


alias kali='docker exec -it kali /bin/bash'

# fix completion command
autoload bashcompinit
bashcompinit
source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.zsh



alias grep='grep --color=auto'
alias :wq="exit"
alias ungron="gron --ungron"



# Change up a variable number of directories
# E.g:
#   cu   -> cd ../
#   cu 2 -> cd ../../
#   cu 3 -> cd ../../../
function cu {
    local count=$1
    if [ -z "${count}" ]; then
        count=1
    fi
    local path=""
    for i in $(/usr/bin/seq 1 ${count}); do
        path="${path}../"
    done
    cd $path
}

# Open all modified files in vim tabs
function vimod {
    vim -p $(git status -suall | awk '{print $2}')
}

# Red name for root
if [ "${UID}" -eq "0" ]; then
  nameC="${txtred}"
fi


# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/diegocampos/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/diegocampos/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/diegocampos/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/diegocampos/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<



alias biggest="du -h --max-depth=1 | sort -h"

alias www="cd /Users/diegocampos/Workspace/www"
alias me="cd /Users/diegocampos/Workspace"
alias pucp="cd /Users/diegocampos/PUCP"
alias py="/usr/local/Cellar/python/3.7.4/bin/python3.7"
alias cpython="~/.conda/envs/Project1/bin/python3.5"
alias wq="exit"
