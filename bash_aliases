###  BASH ALIASES ###

# Easier navigation 
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcuts
alias d="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/projects"
alias g="git"

# List Files
alias l="ls -lF ${colorflag}" # colorized in long format
alias ll="ls -lAF ${colorflag}" # colorized in long format, excluding . and ..
alias ld="ls -lF ${colorflag} | grep --color=never '^d'" # only directories 

# always use color output for `ls`
alias ls="command ls ${colorflag}"

# always enable colored `grep` output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Time
alias week='date +%V' # Get week number
alias timenow='date +"%T"' # current time in 24hrs format as HH:MM:SS
alias datenow='date +"%d-%m-%Y"' # current date in format dd-MM-YY

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Upgrade and Update
alias update='sudo apt-get update && sudo apt-get upgrade' 
