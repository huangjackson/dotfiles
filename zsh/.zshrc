# powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# terminal colors
export CLICOLOR=1
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# navigation
setopt AUTOCD
setopt AUTO_PUSHD           # push the current directory visited on the stack
setopt PUSHD_IGNORE_DUPS    # do not store duplicates in the stack
setopt PUSHD_SILENT         # do not print the directory stack after pushd or popd

# history
setopt SHARE_HISTORY

# aliases
source $HOME/.config/.aliases

# completion
source $HOME/.config/zsh/completion.zsh

# powerlevel10k
source $HOME/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# highlighting (must stay at end)
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
