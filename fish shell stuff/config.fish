# >>> lig pre >>>
eval ('/usr/bin/lig' init fish pre | string collect)
# <<< lig pre <<<
# somerandomxander's config for fish (fedora edition)

### fish settings ###

# optimizations
set -g fish_history_size 20000
set -g fish_escape_delay_ms 10
set -g fish_sequence_key_delay_ms 150
set -g fish_term24bit 1
set -g fish_handle_reflow 0
set -g fish_autosuggestion_enabled 0

### defaults ###

# set default editor to fresh-editor
set -gx EDITOR fresh
set -gx VISUAL fresh

# set default pagers to moor and bat
set -gx PAGER moor
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -gx MANROFFOPT "-c"

# ripgrep settings
set -gx RIPGREP_CONFIG_PATH $HOME/.ripgreprc

# set the default home directory
cd $HOME/Downloads

# source go binary dir
fish_add_path -g /home/somerandomxander/go/bin

### plugins ###

# init starship
starship init fish | source

# init zoxide
zoxide init fish --cmd cd | source

# init pay-respects
pay-respects fish --alias | source

# ordering: run pfetch
pfetch

# run calendar
carl

### improvements ###

# optimize cd to reduce time navigating back dirs
abbr -a .. cd ..
abbr -a ... cd ../..
abbr -a .... cd ../../..
abbr -a ..... cd ../../../..

# pipe suffixes
abbr -a NE --position anywhere -- "2>/dev/null"
abbr -a DN --position anywhere -- "> /dev/null"
abbr -a NUL --position anywhere -- ">/dev/null 2>&1"

# bangbang: make a function that gets last item in history, and an
#           abbreviation that uses it wherever you type !!

function last_history_item -d "Get the last executed item from history"
    history --max=1
end

abbr -a !! --position anywhere --function last_history_item

# zsh chpwd function but in fish
function my_chpwd --on-variable PWD
  echo "changed to $PWD"
end

# bind redo to ctrl+shift+z
bind ctrl-shift-Z redo

# function for yazi
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

### variables ###

# disable ai in pay-respects
set -gx _PR_AI_DISABLE 1

# exclude dirs we dont want so we protect zoxide from crashing out
set -gx _ZO_EXCLUDE_DIRS /tmp /var /proc /sys /node_modules .git /dist /build

# set a database aging limit, my defaults gonna be 1 year
set -gx _ZO_MAXAGE 365

### unix to rust commands ###

# abbrs
abbr -a sudo sudo-rs
abbr -a grep rg
abbr -a find fd
abbr -a sed sd
abbr -a du duf
abbr -a df dysk
abbr -a rm rmz
abbr -a cp cpz
abbr -a awk awkrs
abbr -a diff delta
abbr -a head head-rs
abbr -a top btm
abbr -a ps procs
abbr -a time hyperfine
abbr -a man mant
abbr -a tlrc tldr
abbr -a ping sping
abbr -a tar ouch
abbr -a dl tur
abbr -a torrent vortex-cli
abbr -a git 'jj git'
abbr -a less moor
abbr -a wc kz
abbr -a bc eva
abbr -a cfdisk disktui
abbr -a speedtest cf_speedtest
abbr -a xargs rargs
abbr -a nmtui wifitui
abbr -a nmcli nmwrap
abbr -a parallel rust-parallel
abbr -a tree lstr
abbr -a cut tuc
abbr -a watch hwatch
abbr -a fzf 'sk --algo frizbee --typos'
abbr -a help halp
abbr -a dd caligula
abbr -a pkill pik
abbr -a rename nomino
abbr -a sysctl systeroid
abbr -a km kmon
abbr -a uniq xuniq
abbr -a jq qj
abbr -a lsof openfd
abbr -a gpg sq
abbr -a gpgv sqv
abbr -a xdg-open handlr

# aliases
alias ls="lsd -Al --group-directories-first --header --blocks name,date,size,permission,user"
alias cat="bat --theme='Catppuccin Mocha'"
alias zed="flatpak run dev.zed.Zed-Preview"
alias flatpak="rpak"

### shortcuts ###

# directories
abbr -a home 'cd $HOME/Downloads'
abbr -a config 'cd ~/.config'

# qol
abbr -a nano fresh
abbr -a cls clear
abbr -a src 'exec fish'
abbr -a logout 'loginctl kill-user somerandomxander'
abbr -a shutdown 'sudo-rs shutdown now'
abbr -a yt-dlp-audio 'yt-dlp -x --audio-format opus'
abbr -a vacuum 'sudo-rs journalctl --vacuum-size=1B'
abbr -a uptime 'uptime -p'
abbr -a grubsrc 'sudo-rs grub2-mkconfig -o /boot/grub2/grub.cfg'
abbr -a sysctlsrc 'sudo-rs sysctl --system'
abbr -a fullup 'sudo-rs dnf5 distro-sync --refresh'
abbr -a clean 'sudo-rs dnf5 clean packages'
abbr -a copr 'sudo-rs dnf5 copr'
abbr -a 0 run0
abbr -a 8888 'sping 8.8.8.8'
abbr -a flat flatpak
abbr -a dbx distrobox
abbr -a dec 'ouch decompress'
abbr -a f 'fresh'
abbr -a u 'topgrade'

# editing
abbr -a dnfedit 'sudo-rs fresh /etc/dnf/dnf.conf'
abbr -a dnfview 'bat /etc/dnf/dnf.conf'
abbr -a dracutedit 'sudo-rs fresh /etc/dracut.conf'
abbr -a dracutview 'bat /etc/dracut.conf'
abbr -a fishedit 'fresh ~/.config/fish/config.fish'
abbr -a fishview 'bat ~/.config/fish/config.fish'
abbr -a grubedit 'sudo-rs fresh /etc/default/grub'
abbr -a grubview 'bat /etc/default/grub'
abbr -a sysctledit 'sudo-rs fresh /etc/sysctl.d/99-srx.conf'
abbr -a sysctlview 'bat /etc/sysctl.d/99-srx.conf'

### credits ###

# u/_mattmc3_ for shebang function
# beeb.li for tips and tricks
# cachyos for cd optimization

# somerandomxander - 2025-2026
# find me at youtube.com/@somerandomxander
# >>> lig post >>>
eval ('/usr/bin/lig' init fish post | string collect)
# <<< lig post <<<
