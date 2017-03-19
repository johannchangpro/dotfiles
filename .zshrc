# {{{ Powerlevel9k
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_COLOR_SCHEME='light'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\e[1;97;47m\e[0m"
if [ "$UID" -eq 0 ]; then
  POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="# "
else
  POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="$ "
fi
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=( \
  ssh \
  context \
  virtualenv \
  dir_writable \
  dir \
  rbenv \
  vcs \
  status \
  root_indicator \
  background_jobs \
  time \
)
# }}}


# zsh-history-substring-search {{{
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
# }}}


# enable the color support of ls
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors \
    && eval "$(dircolors -b ~/.dircolors)" \
    || eval "$(dircolors -b)"
  alias ls='ls --quoting-style=literal --color=auto'
fi


# misc {{{
export CASE_SENSITIVE=true

setopt APPEND_HISTORY
setopt SHARE_HISTORY

# disable ctrl-d
setopt IGNORE_EOF
# }}}


# {{{ zplug
source ~/.zplug/init.zsh

zplug "bhilburn/powerlevel9k", as:theme
zplug "changyuheng/fz"
zplug "rupa/z", use:z.sh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Enable all oh-my-zsh's features
zplug "lib/*", from:oh-my-zsh
zplug "plugins/gpg-agent", from:oh-my-zsh
zplug "plugins/nvm", from:oh-my-zsh
zplug "plugins/pyenv", from:oh-my-zsh
zplug "plugins/ssh-agent", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
# }}}


# autosuggestions {{{
# this has to be done after the plugin being loaded
ZSH_AUTOSUGGEST_CLEAR_WIDGETS=(
  beginning-of-line
  backward-delete-char
  backward-delete-word
  backward-kill-word
  history-search-forward
  history-search-backward
  history-beginning-search-forward
  history-beginning-search-backward
  history-substring-search-up
  history-substring-search-down
  up-line-or-history
  down-line-or-history
  accept-line
)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=black,bold,underline'
# }}}


# fzf {{{
fzf_default_opts() {
  local base03="234"
  local base02="235"
  local base01="240"
  local base00="241"
  local base0="244"
  local base1="245"
  local base2="254"
  local base3="230"
  local yellow="136"
  local orange="166"
  local red="160"
  local magenta="125"
  local violet="61"
  local blue="33"
  local cyan="37"
  local green="64"
  ## Solarized Light color scheme for fzf
  export FZF_DEFAULT_OPTS="
    --color fg:-1,bg:-1,hl:$blue,fg+:$base02,bg+:$base2,hl+:$blue
    --color info:$yellow,prompt:$yellow,pointer:$base03,marker:$base03,spinner:$yellow
  "
}
fzf_default_opts && unset fzf_default_opts
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# }}}


# macOS {{{
if [[ "$OSTYPE" == darwin* ]]; then
  # ls color
  eval "$(gdircolors -b ~/.dircolors)" || eval "$(gdircolors -b)"
  alias ls='gls --quoting-style=literal --color=auto'

  # updatedb
  alias updatedb='sudo /usr/libexec/locate.updatedb'

  # include macOS specific executables
  [ -d "$HOME/bin/darwin" ] && export PATH="$PATH:$HOME/bin/darwin"
fi
# }}}
