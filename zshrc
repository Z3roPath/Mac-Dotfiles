# Catppuccin Mocha for bat
export BAT_THEME="Catppuccin Mocha"

# Starship prompt
eval "$(starship init zsh)"

# Aliases for eza (modern ls)
alias ls='eza --icons --grid --group-directories-first'
alias ll='eza --icons --long --group-directories-first'
alias la='eza --icons --all --group-directories-first'
alias tree='eza --icons --tree'

# fzf colors (Catppuccin Mocha)
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
