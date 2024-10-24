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
off='\[\e[38;5;198m\]'  # Off Purple                                                                                  
dye='\[\e[38;5;139m\]'  # Dyed Purple                                                                                 
                                                                                                                      
# If not running interactively, don't do anything                                                                     
[[ $- != *i* ]] && return                                                                                             
                                                                                                                      
alias ls='ls --color=auto'                                                                                            
alias grep='grep --color=auto'                                                                                        
alias mkdir='mkdir -p -v'                                                                                             
alias open='firefox --new-window'                                                                                     
alias notes='cat ~/Notes/commands.txt -n | grep '                                                                     
alias note='vim ~/Notes/commands.txt'                                                                                 
alias SS='sudo pacman -S'                                                                                             
alias nmap-versions='sudo nmap --min-rate=750 -sV -oN nmap-vers.txt -v -p-'                                           
alias nmap-vulns='sudo nmap --min-rate=750 --script=vuln -oN nmap-vulns.txt -v -p'                                    
alias uh='sudo sysctl net.ipv6.conf.all.disable_ipv6=0'                                                               
                                                                                                                      
# This is my Prompt section. I have 3, but the one that's not commented is the best obvi.                             
PS1_CMD1="$(ip addr | grep /24 | cut -d ' ' -f 6 | cut -d '/' -f 1)"                                                  
TIME="${off}\[\e[4m\]\t\[\e[0m\]"                                                                                     
USERINFO="${off}[${pnk}\u${off}@${pnk}${PS1_CMD1}${off}]"                                                             
DIR="${off}\w"                                                                                                        
PROMPT="${dye} OwO!? "                                                                                                
PS1="\n $TIME$USERINFO$DIR$PROMPT"                                                                                    
                                                                                                                      
#PS1='[\u@\h \W]\$ '                                                                                                  
                                                                                                                      
#PS1="\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\`[\u@\h:\w]\<strong>\$</strong> "                                                                                                            
                                                                                                                      
# Removes case sensitivity for directory searching                                                                    
bind 'set completion-ignore-case on'                                                                                  
                                                                                                                      
# One at a time tab-scrolling = bind 'TAB:menu-complete'                                                              
                                                                                                                      
# Adds a time to bash history                                                                                         
HISTTIMEFORMAT="%T "                                                                                                  
HISTCONTROL=ignoredups                                                                                                
shopt -s histappend                                                                                                   
shopt -s checkjobs                                                                                                    
shopt -s direxpand                                                                                                    
shopt -s dirspell                                                                                                     
shopt -s histverify                                                                                                   
shopt -s mailwarn                                                                                                     
                                                                                                                      
                                                                                                                      
# Variables                                                                                                           
export OPENAI_API_KEY='sk-n7YOMOMMA YOMOMMA YOMOMMA YOMOMMA YOMOMMA YOMOMMA YOMOMMA YOMOMMA YOMOMMA YOMOMMA YOMOMMA YOMOMMA'                                           
