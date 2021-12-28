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

v="0.1.1"
# -- INTERRUPCAO FORCADA --
trap 'printf "\n";stop;exit 1' 2
trap user_interrupt SIGINT
trap user_interrupt SIGTSTP
user_interrupt(){
clear
echo -e "${red}${bold}CTRL+C PRESSIONADO\nFECHADO O SCRIPT\nCREDITOS: ${blue}Mr.Robot${reset}"
echo
exit 1
}

#  > /dev/null 2>&1
# [NOME_FUNÇÃO] () { [AÇÕES DA FUNÇÃO] }

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

v_root () {
h="$(whoami)"
[[ $h != root ]] ; h="${reset}${green}$h${reset}"
[[ $h == root ]] ; h="${reset}${red}$h${reset}"
}

i_basic () {
clear
log="${bold}${yellow} INSTALANDO PACOTES ESSENCIAIS${reset}"
echo -e $log
echo
nome=wget
echo -e "  • ${bold} Instalando ${reset}${und}${blue}$nome${reset}"
pkg install $nome -y  > /dev/null 2>&1
clear
log="$log \n\n  ${bold}${green} •  ${reset}${blue}${und}$nome${reset} ${bold}instalado${reset}"
echo -e $log
sleep 0.5
nome=git
echo -e "  • ${bold} Instalando ${reset}${und}${blue}$nome${reset}"
pkg install $nome -y  > /dev/null 2>&1
clear
log="$log \n  ${bold}${green} •  ${reset}${blue}${und}$nome${reset} ${bold}instalado${reset}"
echo -e $log
sleep 0.5
nome=neofetch
echo -e "  • ${bold} Instalando ${reset}${und}${blue}$nome${reset}"
pkg install $nome -y  > /dev/null 2>&1
clear
log="$log \n  ${bold}${green} •  ${reset}${blue}${und}$nome${reset} ${bold}instalado${reset}"
echo -e $log
sleep 0.5
nome=python
echo -e "  • ${bold} Instalando ${reset}${und}${blue}$nome${reset}"
pkg install $nome -y  > /dev/null 2>&1
clear
log="$log \n  ${bold}${green} •  ${reset}${blue}${und}$nome${reset} ${bold}instalado${reset}"
echo -e $log
sleep 0.5
nome=python2
echo -e "  • ${bold} Instalando ${reset}${und}${blue}$nome${reset}"
pkg install $nome -y  > /dev/null 2>&1
clear
log="$log \n  ${bold}${green} •  ${reset}${blue}${und}$nome${reset} ${bold}instalado${reset}"
echo -e $log
sleep 0.5
nome=python3
echo -e "  • ${bold} Instalando ${reset}${und}${blue}$nome${reset}"
pkg install $nome -y  > /dev/null 2>&1
clear
log="$log \n  ${bold}${green} •  ${reset}${blue}${und}$nome${reset} ${bold}instalado${reset}"
echo -e $log
sleep 0.5
nome=openssh
echo -e "  • ${bold} Instalando ${reset}${und}${blue}$nome${reset}"
pkg install $nome -y  > /dev/null 2>&1
clear
log="$log \n  ${bold}${green} •  ${reset}${blue}${und}$nome${reset} ${bold}instalado${reset}"
echo -e $log
sleep 0.5
nome=curl
echo -e "  • ${bold} Instalando ${reset}${und}${blue}$nome${reset}"
pkg install $nome -y  > /dev/null 2>&1
clear
log="$log \n  ${bold}${green} •  ${reset}${blue}${und}$nome${reset} ${bold}instalado${reset}"
echo -e $log
sleep 0.5
menu
}

menu_root () {
clear
banner
echo -e "${bold}${yellow} ! EM DESENVOLVIMENTO !"
sleep 5
menu
}

menu_scripts () {
clear
banner
echo -e "${bold}${yellow} ! EM DESENVOLVIMENTO !"
sleep 5
menu
}

atualizar () {
clear
banner
rm mata_noob.sh
wget https://raw.githubusercontent.com/MascaradoOfc/MATA_NOOB/main/mata_noob.sh
chmod +x mata_noob.sh
clear
bash mata_noob.sh
}

menu () {
clear
banner

h="$(whoami)"
[[ $h != root ]] ; h="${reset}${green}$h${reset}"
[[ $h == root ]] ; h="${reset}${red}$h${reset}"
ip="${reset}${cyan}$(wget -qO- ipv4.icanhazip.com)${reset}"

echo -e "${bold}${yellow}USER: $h  ${bold}${yellow}IP: $ip  ${bold}${yellow}VERSAO: ${magenta}$v"
echo
echo -e "${bold}${red}1)${reset} ${bold}${und}SCRIPTS${reset}"
echo -e "${bold}${red}2)${reset} ${bold}${und}AREA ROOT${reset}"
echo -e "${bold}${red}3)${reset} ${bold}${und}ATUALIZAR SCRIPT${reset}"
echo
read -p $'\u001b[34m\u001b[1mESCOLHA UMA OPCAO: \u001b[0m' menu_option

if [[ $menu_option == 1 || $menu_option == 01 ]]; then
menu_scripts
elif [[ $menu_option == 2 || $menu_option == 02 ]]; then
menu_root
elif [[ $menu_option == 3 || $menu_option == 03 ]]; then
atualizar
else
menu
fi
}
menu
