starship init fish | source
zoxide init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

alias yy='/home/helix/pkg/yazi/target/release/yazi'
alias deno='/home/helix/.deno/bin/deno'
alias l='eza -l --color=always --grid --group-directories-first --icons'
alias ll='eza -lah --color=always --group-directories-first --icons'
alias lll='exa -aT --color=always --group-directories-first --icons'
alias la='exa -al --color=always --group-directories-first --icons'
alias cd='z'
alias pn='pnpm'
alias telegram='telegram-desktop'
