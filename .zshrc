# -------------- Alias --------------

# ls alternative: K
alias kk='k -a'
alias ka='k -A'
alias kd='k -d'

# tmux
alias tl='tmux ls'

alias ㅉ="ll"
alias ㅈㅈ="ll"
alias ㅈ="l"
alias ㅈㄴ="ls"
alias ㅔㅣ="cd"

# ------------- Alias end -----------


# if you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
#        
# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
#          
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
#           
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
#            
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
#             
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
#               
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
#                
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
#                  
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# -------------------------------- ZPLUG ---------------------------------
# ZPLUG
source ~/.zplug/init.zsh 

# https://github.com/webyneter/docker-aliases
zplug "webyneter/docker-aliases", use:docker-aliases.plugin.zsh

# https://github.com/wting/autojump
zplug "plugins/autojump",                        from:oh-my-zsh, frozen:1

# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found
zplug "plugins/command-not-found",               from:oh-my-zsh

# https://github.com/supercrabtree/k
zplug "supercrabtree/k"

# https://github.com/zsh-users
zplug "zsh-users/zsh-completions",               defer:0
zplug "zsh-users/zsh-autosuggestions",           defer:1, on:"zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting",       defer:1, on:"zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search",  defer:2, on:"zsh-users/zsh-syntax-highlighting"


zplug check || zplug install 
zplug load 

# ------------------------------ ZPLUG END -------------------------------
