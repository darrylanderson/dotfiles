# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# ------------------------------
# oh-my-zsh configuration
# ------------------------------

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Powerlevel10k prompt config
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status aws kubectlcontext background_jobs)
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{014}\uF460 "
#POWERLEVEL9K_ROOT_ICON="\uF09C"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(common-aliases 
	fasd 
	fast-syntax-highlighting
	git 
	gitfast
	kubectl 
	zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Enable purepower theme
source ~/.purepower


# ------------------------------
# User configuration
# ------------------------------
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export TERM=xterm-256color
export AWS_PROFILE_ASSUME_ROLE="iam"

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export NVM_DIR="/Users/danderson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(rbenv init -)"

source $(which assume-role)
