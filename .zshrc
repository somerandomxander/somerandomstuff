# Path changes
export PATH="$HOME/.cargo/bin:$PATH"

# Run leenfetch at startup
leenfetch

# Set the default directory
cd $HOME/Downloads

# Disable coredumping
ulimit -c 0

# Init zoxide
eval "$(zoxide init zsh)"

# Init mcfly
eval "$(mcfly init zsh)"

# Aliases
alias sudo="sudo-rs"
alias ls="lla"
alias cd="z"
alias grep="rga --color=auto"
alias cat="bat"
alias cp="xcp"
alias top="btm"
alias home="cd $HOME/Downloads"
alias sudoedit="sudo EDITOR=fresh visudo"
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
alias dd="caligula"

# SCX
alias scx="sudo scx_p2dq -s 10 -a --keep-running --deadline -f -y --atq-enabled true --dhq-enabled true --cpu-priority true --wakeup-llc-migrations --queued-wakeup --task-slice true --sched-mode performance --virt-llc-enabled true --latency-priority --wakeup-preemption --virt-llc=2 --relaxed-maps true -l 8 -i 1"

# Aliases for uutils

alias free="uutils-procps free"
alias pgrep="uutils-procps pgrep"
alias pidof="uutils-procps pidof"
alias pidwait="uutils-procps pidwait"
#alias pkill="uutils-procps pkill"
alias pmap="uutils-procps pmap"
alias pwdx="uutils-procps pwdx"
alias skill="uutils-procps skill"
alias slabtop="uutils-procps slabtop"
alias snice="uutils-procps snice"
alias tload="uutils-procps tload"
alias vmstat="uutils-procps vmstat"

alias cmp="diffutils cmp"

alias hostname="uutils-hostname"
alias dnsdomainname="uutils-hostname -d"
alias nisdomainname="uutils-hostname -y"
alias ypdomainname="uutils-hostname -y"

alias blockdev="uutils-util-linux blockdev"
#alias cal="uutils-util-linux cal"
alias chcpu="uutils-util-linux chcpu"
alias ctrlaltdel="uutils-util-linux ctrlaltdel"
alias dmesg="uutils-util-linux dmesg"
alias fsfreeze="uutils-util-linux fsfreeze"
alias last="uutils-util-linux last"
alias lscpu="uutils-util-linux lscpu"
alias lsipc="uutils-util-linux lsipc"
alias lslocks="uutils-util-linux lslocks"
alias lsmem="uutils-util-linux lsmem"
alias mcookie="uutils-util-linux mcookie"
alias mesg="uutils-util-linux mesg"
alias mountpoint="uutils-util-linux mountpoint"
alias nologin="uutils-util-linux nologin"
alias renice="uutils-util-linux renice"
alias rev="uutils-util-linux rev"
alias setpgid="uutils-util-linux setpgid"
alias setsid="uutils-util-linux setsid"
alias uuidgen="uutils-util-linux uuidgen"

alias cksum="uu-cksum"
alias base32="uu-base32"
alias base64="uu-base64"
alias b2sum="uu-b2sum"
alias md5sum="uu-md5sum"
alias sha512sum="uu-sha512sum"
alias basename="uu-basename"
alias basenc="uu-basenc"
alias nl="uu-nl"
alias sort="uu-sort"
alias mv="uu-mv"
alias mkdir="uu-mkdir"
alias uniq="uu-uniq"
alias paste="uu-paste"
alias chgrp="uu-chgrp"
alias chmod="uu-chmod"
alias chown="uu-chown"
alias dirname="uu-dirname"
alias wc="uu-wc"
alias pwd="uu-pwd"
alias rmdir="uu-rmdir"
alias mkdir="uu-mkdir"
alias logname="uu-logname"
alias tac="uu-tac"
alias split="uu-split"
alias join="uu-join"
alias sleep="uu-sleep"
alias head="uu-head"
alias echo="uu-echo"
