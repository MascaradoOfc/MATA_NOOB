#!/bin/bash
# -- CORES --
reset='\u001b[0m'
bold='\u001b[1m'
und='\u001b[4m'
rev='\u001b[7m'
black='\u001b[30m'
red='\u001b[31m'
green='\u001b[32m'
yellow='\u001b[33m'
blue='\u001b[34m'
magenta='\u001b[35m'
cyan='\u001b[36m'
white='\u001b[37m'
bblack='\u001b[40m'
bred='\u001b[41m'
bgreen='\u001b[42m'
byellow='\u001b[43m'
bblue='\u001b[44m'
bmagenta='\u001b[45m'
bcyan='\u001b[46m'
bwhite='\u001b[47m'

# -- INTERRUPCAO FORCADA --
trap 'printf "\n";stop;exit 1' 2
trap user_interrupt SIGINT
trap user_interrupt SIGTSTP
user_interrupt(){
clear
echo -e "${bold}${cyan}CTRL+C${yellow} FOI PRESSIONADO"
echo -e "${bold}${yellow}O SCRIPT FOI ENCERRADO"
echo -e "${bold}${yellow}CREDITOS:${reset}${magenta} @MASCARADO_OFC"
echo -e "${bold}${yellow}CREDITOS:${reset}${und}${magenta}"https://t.me/MASCARADO_OFC
echo
exit 1
}

# -- BANNER DO SCRIPT --
banner () {
echo -e "${red}${bold} ███▄ ▄███▓ ▄▄▄     ▄▄▄█████▓ ▄▄▄      "
echo -e "▓██▒▀█▀ ██▒▒████▄   ▓  ██▒ ▓▒▒████▄    "
echo -e "▓██    ▓██░▒██  ▀█▄ ▒ ▓██░ ▒░▒██  ▀█▄  "
echo -e "▒██    ▒██ ░██▄▄▄▄██░ ▓██▓ ░ ░██▄▄▄▄██ "
echo -e "▒██▒   ░██▒ ▓█   ▓██▒ ▒██▒ ░  ▓█   ▓██▒"
echo -e "░ ▒░   ░  ░ ▒▒   ▓▒█░ ▒ ░░    ▒▒   ▓▒█░"
echo -e "░  ░      ░  ▒   ▒▒ ░   ░      ▒   ▒▒ ░"
echo -e "░      ░     ░   ▒    ░        ░   ▒   "
echo -e "       ░         ░  ░              ░  ░"
echo -e "           ███▄    █  ▒█████   ▒█████   ▄▄▄▄   "  
echo -e "           ██ ▀█   █ ▒██▒  ██▒▒██▒  ██▒▓█████▄   "
echo -e "          ▓██  ▀█ ██▒▒██░  ██▒▒██░  ██▒▒██▒ ▄██  "
echo -e "          ▓██▒  ▐▌██▒▒██   ██░▒██   ██░▒██░█▀    "
echo -e "          ▒██░   ▓██░░ ████▓▒░░ ████▓▒░░▓█  ▀█▓  "
echo -e "          ░ ▒░   ▒ ▒ ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░▒▓███▀▒  "
echo -e "          ░ ░░   ░ ▒░  ░ ▒ ▒░   ░ ▒ ▒░ ▒░▒   ░   "
echo -e "             ░   ░ ░ ░ ░ ░ ▒  ░ ░ ░ ▒   ░    ░   "
echo -e "                   ░     ░ ░      ░ ░   ░        "
echo -e "                                             ░   "
}

clear
m () {
clear
banner
echo -e "${bold}${yellow}ATUALIZANDO O SCRIPT, AGUARDE"
}

ASESR="$(ping -c 5 -q www.google.com >&/dev/null; echo $?)" &> /dev/null
if [[ "$ASESR" != 0 ]]
then
   clear
   banner
   echo -e "${bold}${red}!!! ${yellow}VOCE PRECISA ESTAR CONECTADO NA INTERNET ${red}!!!"
   sleep 3
   bash mata_noob.sh
else
   m
fi
rm -r mata_noob.sh
m
wget https://raw.githubusercontent.com/MascaradoOfc/MATA_NOOB/main/mata_noob.sh
m
chmod +x mata_noob.sh
m
bash mata_noob.sh
rm -r update.sh
