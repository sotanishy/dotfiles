source ~/.zplug/init.zsh

# plugins
zplug "zsh-users/zsh-syntax-highlighting"
# zplug "zsh-users/zsh-autosuggestions"
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# local config
if [ -f ~/.zshrc.local ]; then
    . ~/.zshrc.local
fi

# alias
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# history
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=100000

setopt inc_append_history
setopt share_history  # share history with other terminals
setopt hist_ignore_all_dups

# less
export LESS='-R'

# alias
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias reload='source ~/.zshrc'

# prompt
# autoload -Uz vcs_info
# precmd() { vcs_info }
# zstyle ':vcs_info:git:*' formats '(%b)'
# setopt prompt_subst
# PROMPT='%F{green}%n@%m%f %F{blue}%1~%f %F{red}${vcs_info_msg_0_}%f
# %# '

# options
setopt correct  # correct misspelled commands
setopt ignoreeof  # prevent logout on ctrl+d

# cd
alias ...='../..'
alias ....='../../..'
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# rust
export RUST_BACKTRACE=1
