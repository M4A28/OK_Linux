# some alias for help

# nano with line number and curser mode on.
# alias nano='nano -T 4 -l -m'

# show the free ram in GB.
alias free='free -h'


# show file size in GB.
# alias du='du -h'

# call python 2.
# alias py2='python'

# call python 3.
# alias py3='python3'

# copy file and cheak it on or not and show the outbout of proses.
alias cp='cp -i -v'

# move file and cheak it on or not and show the outbout of proses.
alias mv='mv -i -v'

# read file and show line numbers.
#alias cat='cat -n'

# remone  file and show the outbout of proses.
alias rm='rm  -v'

#alias lsh='ls -d .[!.]?*'

# mlterm with color 242831.
# alias mlterm='mlterm -b 242831'

# archave dir in zstd.
alias tarzstd='tar --use-compress-program zstd '

# archave dir in lz4.
alias tarlz4='tar --use-compress-program lz4'

# call powershell.
#alias powershell='pwsh'

# upgrade the system.
alias upgrade='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'

# clean swap.
alias cleanswap='sudo swapoff -a &&  sudo swapon -a'

# restat blutooth.
alias reblue='sudo service bluetooth restart'

# Poweroff, clean and cheak weatr.
alias bye='cleanswap && sleep 5 &&  poweroff'

# colour syntax in grep.
alias grep="grep --colour"

# start wifi. 
alias restrtwifi="sudo systemctl  restart  iwd.service" 

# cat with line number.
alias cat='cat -n'

# get HDD drive statuse.
alias HDDHilth='sudo smartctl -a'

# organiz data 

# exa 
#alias l='exa'

# batcat short or cat with color
alias bcat='batcat'

# termanl calculater
alias c='gcalccmd'

# open files from termanal
alias open='exo-open'

# kill mysqld and block bluetooth 
alias ook='sudo killall mysqld; rfkill block bluetooth; reblue'

# close system 
alias bye='cleanswap && sleep 15 && shutdown -P now'

# scrcpy copy 
alias scrcpy='scrcpy --push-target /storage/2540-1A09/DCIM'
