#!/bin/bash

# prompt: "google <text1 text2 ...>"
# executes: googles <text1 text2 ...> in safari
google() {
  open "https://www.google.com/search?q=$(echo "$*" | sed 's/ /+/g')"
}

#prompt: "calendar"
#exectues: opens google calendar in safari
calendar() {
  open "https://calendar.google.com/calendar/u/0/r"
}

#prompt: "gmail"
#exectues: opens gmail in safari
gmail() {
  open "https://mail.google.com/mail/u/0/#inbox"
}

#prompt: "github"
#exectues: opens github.com in safar
github() {
  open "https://github.com/EdwardGlockner?tab=repositories"
}

#prompt: "customcommands"
#executes: cd to /bin/bash (this file)
alias customcommands="nvim ~/customcommands/.custom_bash_commands.sh"

#prompt: "tekfys"
#executes: cd to Teknik Fysik directory in OneDrive
alias tekfys="cd ~; cd OneDrive\ -\ Uppsala\ universitet/Teknisk\ Fysik/"

#prompt: tc (termin current)
#executes: cd to Termin 6 in teknisk fysik directory
alias tc="cd ~; cd OneDrive\ -\ Uppsala\ universitet/Teknisk\ Fysik/Termin\ 6\ VT23/"

#prompt: tree
#executes: tree equivalent for linux
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

#prompt: copydir
#executes: copies the current working directory to the clipboard
copydir() {
  pwd | sed 's/ /\\ /g' | pbcopy
}

alias mount='mount |column -t'

alias bc='bc -l'

alias ..='cd ..'

alias ...='cd ../..'



