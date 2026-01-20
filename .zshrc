# Path changes
# export PATH="$HOME/.cargo/bin:$PATH"

# Run leenfetch at startup
# leenfetch

# Set the default directory
cd $HOME/Downloads

# Disable coredumping
ulimit -c 0

# Init zoxide
# eval "$(zoxide init zsh)"

# Init mcfly
# eval "$(mcfly init zsh)"

# Init autosuggestions and syntax highlighting
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Aliases
alias ls="lla"
alias cd="z"
alias grep="rg --color=auto"
alias cat="syncat"
alias top="btm"
alias home="cd $HOME/Downloads"
alias sudoedit="sudo EDITOR=vim visudo"
alias zshedit="fresh ~/.zshrc"
alias zshsrc="source ~/.zshrc"
alias yt-dlp-audio="yt-dlp -x --audio-format mp3 --remote-components ejs:github"
alias cls="clear"
alias find="fd"
alias ping="gping"
alias sed="sd"
alias tree="erd"
alias du="pdu"
alias ps="procs"
alias help="halp"
alias neofetch="leenfetch"
alias git="jj git"
alias bc="fend"
alias pkill="pik"
alias sysctl="systeroid"
alias dmesg="rmesg"
alias tail="ptail"
alias touch="bonk"
alias mkdir="bonk"
alias rename="rnr"
alias diff="delta"
