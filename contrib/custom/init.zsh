##
## Defines general aliases and functions.
##
## Authors:
##   Max Fahl
##


### Options

setopt RM_STAR_WAIT


### Aliases

# Postgres
alias pg:up='pg_ctl -D /usr/local/var/postgresql@9.5 start'
alias pg:down='pg_ctl -D /usr/local/var/postgresql@9.5 stop'

# Open prezto configuration in IntelliJ
alias prezto='idea ~/.zprezto'
alias ae='prezto' # For now

# Navigation
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias desktop='cd ~/Desktop'

# Listing
alias lal='ls -al'        # Lists all files including hidden ones.

# Backups
alias momentsbu="/Users/maxfahl/Fahl/Work/Backup/Moments/prodbu.sh"

# Logging
alias taillog='tail -f ~/PIXILAB-Blocks-dev-root/logs/latest.log'

# SSH with no host key check
alias sshni='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

# What uses port
port () {
  lsof -nP -iTCP -sTCP:LISTEN | grep $1
}

# Application dependent alias's
alias 7za='/Applications/Keka.app/Contents/Resources/keka7z'
alias s='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias idea='open -na "IntelliJ IDEA.app" --args "$@"'

# Navigates to the current selected folder in finder
_ns() {
  cd "$(pfs)"
}

# Navigates to the current folder of finder
_nd() {
  cd "$(pfd)"
}

# Find and open work project
_w() {
  cd "$(~/.zprezto/contrib/custom/functions/codeWork $1)"
}

# Find and open private project
_p () {
  cd "$(~/.zprezto/contrib/custom/functions/codePrivate $1)"
}

# Find and open a blocks root
_r () {
  cd "$(~/.zprezto/contrib/custom/functions/roots $1)"
}


###
