#
# ~/.bashrc
#
# This is Added color code for the prompt
blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'      # Reset
pnk='\[\e[38;5;13m\]'  # Pink
off='\[\e[38;5;198m\]'	# Off Purple
dye='\[\e[38;5;139m\]'	# Dyed Purple

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mkdir='mkdir -p -v'

# This is my Prompt section. I have 3, but the one that's not commented is the best obvi.
PROMPT_COMMAND='PS1_CMD1=$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR == 1{ split($2, a," ");print a[1]}'"'"')'

PS1="\n${off}\[\e[4m\]\t\[\e[0m\]${off}[${pnk}\u${off}@${pnk}${PS1_CMD1}${off}/\w${off}]${dye}OwO? "

#PS1='[\u@\h \W]\$ '

#PS1="\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\`[\u@\h:\w]\<strong>\$</strong> "

# Removes case sensitivity for directory searching
bind 'set completion-ignore-case on'

# Adds a time to bash history
HISTTIMEFORMAT="%T "
