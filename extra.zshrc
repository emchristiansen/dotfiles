alias gs='git status'
alias gl='git log --stat'
function gcm() { git commit -au -m "$@" ;} # Fast git commit with message
function gcmp() { git commit -au -m "$@" ; git push; } # GCM and push