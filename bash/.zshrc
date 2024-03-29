# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH. export
# PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will load a random
# theme each time oh-my-zsh is loaded, in which case, to know which specific one
# was loaded, run: echo $RANDOM_THEME See
# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes ZSH_THEME="robbyrussell"
# ZSH_THEME="amuse" ZSH_THEME="half-life" ZSH_THEME="bira"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random Setting this variable
# when ZSH_THEME=random will cause zsh to load a theme from this variable
# instead of looking in $ZSH/themes/ If set to an empty array, this variable
# will have no effect. ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior zstyle
# ':omz:update' mode disabled  # disable automatic updates zstyle ':omz:update'
# mode auto      # update automatically without asking zstyle ':omz:update' mode
# reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls. DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for
# completion. You can also set it to another string to have that shown instead
# of the default red dots. e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1
# (see #5765) COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster. DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output. You can set one of the optional
# three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd" or set a custom format
# using the strftime function format specifications, see 'man strftime' for
# details. HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? Standard plugins can be found in
# $ZSH/plugins/ Custom plugins may be added to $ZSH_CUSTOM/plugins/ Example
# format: plugins=(rails git textmate ruby lighthouse) Add wisely, as too many
# plugins slow down shell startup.
plugins=(git node vscode git-prompt nvm zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions if [[ -n $SSH_CONNECTION ]];
# then export EDITOR='vim' else export EDITOR='mvim' fi

# Compilation flags export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs, plugins,
# and themes. Aliases can be placed here, though oh-my-zsh users are encouraged
# to define aliases within the ZSH_CUSTOM folder. For a full list of active
# aliases, run `alias`.
#
# Example aliases alias zshconfig="mate ~/.zshrc" alias ohmyzsh="mate
# ~/.oh-my-zsh"


###################################################################### >>> ALIAS
alias ll='ls -aghF'
alias la='ls -A'
alias l='ls -CFA'

alias tlauncher="java -jar games/TLauncher-2.876/TLauncher-2.876.jar"
alias telegram="/home/jamerrq/Documents/programs/Telegram/Telegram"
# alias scrcpy="scrcpy --power-off-on-close --turn-screen-off" alias
# scrcpyP="scrcpy --power-off-on-close" alias scrcpyT="scrcpy --turn-screen-off"
alias cl="clear"
alias sz="du -h -a --max-depth=1"
###################################################################### <<< ALIAS

####################################################### >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jamerrq/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jamerrq/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jamerrq/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jamerrq/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
####################################################### <<< conda initialize <<<

PROMPT='%{$fg[yellow]%}[%D{%f/%m/%y} %D{%H:%M:%S}] '$PROMPT

####################################################################### <<< PNPM
export PNPM_HOME="/home/jamerrq/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
####################################################################### >>> PNPM

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

########################################################### >>> CUSTOM FUNCTIONS

# Run all bats tests in current directory
bats() {
    BATS_RUN_SKIPPED=true command bats *.bats
}

# Randomize entries in a file
randomize(){
    if [ -z "$1" ]; then
        echo "No file specified"
        return 1
    fi
    cat $1 | sort -R > tmp.txt
    cat tmp.txt
}

# Remove all files listed in a file
deleteFromFile(){
    if [ -z "$1" ]; then
        echo "No file specified"
        return 1
    fi
    TO_BE_DEL="$1"
    IFS=""
    while read -r file ; do
        rm -r "$file"
    done < "$TO_BE_DEL"
}

# Set new wallpaper
setWallpaper(){
    if [ -z "$1" ]; then
        echo "No file specified"
        return 1
    fi
    cp "$1" ~/Pictures/background.jpg
}

# Setup CPP tests for Exercism
setupCppTests(){
    cmake -G "Unix Makefiles" ..
    make
}

# Setup TS tests for Exercism
setupTsTests(){
    touch yarn.lock && yarn install && clear && yarn test
}

########################################################### <<< CUSTOM FUNCTIONS

# bun completions
[ -s "/home/jamerrq/.bun/_bun" ] && source "/home/jamerrq/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
