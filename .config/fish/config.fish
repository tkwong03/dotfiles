if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Variables
set -Ux XDG_DATA_DIRS /usr/share/kde-settings/kde-profile/default/share:/usr/local/share:/usr/share:/var/lib/flatpak/exports/share:/home/tkwong/.local/share/flatpak/exports/share

# ~~~~~~~~~~~~~~~~~~~
#      ALIASES
# ~~~~~~~~~~~~~~~~~~~

# ls alternatives
alias l='exa -lh --group-directories-first --git --icons'
alias la='exa -alh --group-directories-first --git --icons'

# rm
alias rmi='rm -i'

# Shortcuts
alias fishrc='vim ~/.config/fish/config.fish && source ~/.config/fish/config.fish'

# git
alias gs='git status'
alias commit='git commit'
alias addall='git add -A'
alias copytoken='cat ~/git/.gittoken.txt | xclip -selection clipboard'

alias dotcfg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# update fish history file in dotfiles repo
alias fishhistoryupt='cp ~/.local/share/fish/fish_history ~/git/linux-install/dotfiles/fish/fish_history'
alias configfishupt='cp ~/.config/fish/config.fish ~/git/linux-install/dotfiles/fish/config.fish'

thefuck --alias | source

# ~~~~~~~~~~~~~~~~~~~
#     FUNCTIONS
# ~~~~~~~~~~~~~~~~~~~
function fullupt
	sudo dnf update -y
	flatpak update -y
	echo "Update is complete!"
end

function please
	eval sudo $history[1]
end

