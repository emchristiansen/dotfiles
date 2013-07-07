#! /usr/bin/zsh

################################################################################ 
# Git

alias gs='git status'
alias gl='git log --stat'

function gcm() { git commit -au -m "$@" ;} # Fast git commit with message
function gcmp() { git commit -au -m "$@" ; git push; } # GCM and push

################################################################################ 

alias ezsh='e ~/.zshrc'
alias ezshe='e ~/.dotfiles/extra.zshrc'

alias cddot='cd ~/.dotfiles'

alias rh="runhaskell"
alias xo='xdg-open'
alias e='emacs -nw'

alias jj="java -jar"
alias openCVToMaven='mvn install:install-file -Dfile=/usr/local/share/OpenCV/java/opencv-2.4.9.jar -DgroupId=opencv -DartifactId=opencv -Dversion=2.4.9 -Dpackaging=jar'
alias openCVClearIvy='rm -rf ~/.ivy2/cache/opencv'
alias openCVUpdateIvy='openCVToMaven; openCVClearIvy'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias pwdcp='pwd | pbcopy'

# Kills all processes matching regex.
function ekill() { ps aux | grep -e "$@" | grep -v grep | awk '{print $2}' | xargs -i kill -9 {}; }
