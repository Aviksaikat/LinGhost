#!/bin/bash
# @Author: SAIKAT KARMAKAR
# @Date: 2021-08-17 20:18:17
# @Last Modified by: SAIKAT KARMAKAR
# @Last Modified time: 2021-08-19 23:22:49

# Print & color information
C=$(printf '\033')
RED="${C}[1;31m"
SED_RED="${C}[1;31m&${C}[0m"
GREEN="${C}[1;32m"
SED_GREEN="${C}[1;32m&${C}[0m"
YELLOW="${C}[1;33m"
SED_YELLOW="${C}[1;33m&${C}[0m"
SED_RED_YELLOW="${C}[1;31;103m&${C}[0m"
BLUE="${C}[1;34m"
SED_BLUE="${C}[1;34m&${C}[0m"
ITALIC_BLUE="${C}[1;34m${C}[3m"
LIGHT_MAGENTA="${C}[1;95m"
SED_LIGHT_MAGENTA="${C}[1;95m&${C}[0m"
LIGHT_CYAN="${C}[1;96m"
SED_LIGHT_CYAN="${C}[1;96m&${C}[0m"
LG="${C}[1;37m" #LightGray
SED_LG="${C}[1;37m&${C}[0m"
DG="${C}[1;90m" #DarkGray
SED_DG="${C}[1;90m&${C}[0m"
NC="${C}[0m"
UNDERLINED="${C}[5m"
ITALIC="${C}[3m"

print_BANNER(){
	# if lolcat installed then make it colorful
	echo ""
	if [ $(which lolcat 2>/dev/null) ];
		then
	echo "        ██       ██            ████████  ██                         ██  
       ░██      ░░            ██░░░░░░██░██                        ░██  
       ░██       ██ ███████  ██      ░░ ░██       ██████   ██████ ██████
       ░██      ░██░░██░░░██░██         ░██████  ██░░░░██ ██░░░░ ░░░██░ 
       ░██      ░██ ░██  ░██░██    █████░██░░░██░██   ░██░░█████   ░██  
       ░██      ░██ ░██  ░██░░██  ░░░░██░██  ░██░██   ░██ ░░░░░██  ░██  
       ░████████░██ ███  ░██ ░░████████ ░██  ░██░░██████  ██████   ░░██ 
       ░░░░░░░░ ░░ ░░░   ░░   ░░░░░░░░  ░░   ░░  ░░░░░░  ░░░░░░     ░░  
	" | lolcat 
	
	else
		echo "                                                                                
 [0;1;31;91m▄[0;1;33;93m▄[0m           [0;1;33;93m██[0m                  [0;1;35;95m▄▄[0;1;31;91m▄▄[0m   [0;1;32;92m▄[0;1;36;96m▄[0m                                     
 [0;1;33;93m█[0;1;32;92m█[0m           [0;1;32;92m▀▀[0m                [0;1;35;95m██[0;1;31;91m▀▀[0;1;33;93m▀▀[0;1;32;92m█[0m  [0;1;36;96m█[0;1;34;94m█[0m                              [0;1;33;93m█[0;1;32;92m█[0m     
 [0;1;32;92m█[0;1;36;96m█[0m         [0;1;32;92m██[0;1;36;96m██[0m     [0;1;31;91m█[0;1;33;93m█▄[0;1;32;92m██[0;1;36;96m██[0;1;34;94m▄[0m  [0;1;35;95m█[0;1;31;91m█[0m        [0;1;34;94m█[0;1;35;95m█▄[0;1;31;91m██[0;1;33;93m██[0;1;32;92m▄[0m   [0;1;34;94m▄█[0;1;35;95m██[0;1;31;91m█▄[0m   [0;1;32;92m▄[0;1;36;96m▄█[0;1;34;94m██[0;1;35;95m██[0;1;31;91m▄[0m  [0;1;33;93m█[0;1;32;92m██[0;1;36;96m██[0;1;34;94m██[0m  
 [0;1;36;96m█[0;1;34;94m█[0m           [0;1;34;94m██[0m     [0;1;33;93m█[0;1;32;92m█▀[0m   [0;1;34;94m█[0;1;35;95m█[0m  [0;1;31;91m█[0;1;33;93m█[0m  [0;1;32;92m▄[0;1;36;96m▄▄[0;1;34;94m▄[0m  [0;1;35;95m█[0;1;31;91m█▀[0m   [0;1;32;92m█[0;1;36;96m█[0m  [0;1;34;94m█[0;1;35;95m█▀[0m  [0;1;33;93m▀█[0;1;32;92m█[0m  [0;1;36;96m█[0;1;34;94m█▄[0;1;35;95m▄▄[0;1;31;91m▄[0m [0;1;33;93m▀[0m    [0;1;36;96m█[0;1;34;94m█[0m     
 [0;1;34;94m█[0;1;35;95m█[0m           [0;1;35;95m██[0m     [0;1;32;92m█[0;1;36;96m█[0m    [0;1;35;95m█[0;1;31;91m█[0m  [0;1;33;93m█[0;1;32;92m█[0m  [0;1;36;96m▀[0;1;34;94m▀█[0;1;35;95m█[0m  [0;1;31;91m█[0;1;33;93m█[0m    [0;1;36;96m█[0;1;34;94m█[0m  [0;1;35;95m█[0;1;31;91m█[0m    [0;1;32;92m█[0;1;36;96m█[0m   [0;1;35;95m▀▀[0;1;31;91m▀▀[0;1;33;93m██[0;1;32;92m▄[0m    [0;1;34;94m█[0;1;35;95m█[0m     
 [0;1;35;95m█[0;1;31;91m█▄[0;1;33;93m▄▄[0;1;32;92m▄▄[0;1;36;96m▄[0m  [0;1;34;94m▄[0;1;35;95m▄▄[0;1;31;91m██[0;1;33;93m▄▄[0;1;32;92m▄[0m  [0;1;36;96m█[0;1;34;94m█[0m    [0;1;31;91m█[0;1;33;93m█[0m   [0;1;36;96m██[0;1;34;94m▄▄[0;1;35;95m▄█[0;1;31;91m█[0m  [0;1;33;93m█[0;1;32;92m█[0m    [0;1;34;94m█[0;1;35;95m█[0m  [0;1;31;91m▀[0;1;33;93m██[0;1;32;92m▄▄[0;1;36;96m██[0;1;34;94m▀[0m  [0;1;35;95m█[0;1;31;91m▄▄[0;1;33;93m▄▄[0;1;32;92m▄█[0;1;36;96m█[0m    [0;1;35;95m█[0;1;31;91m█▄[0;1;33;93m▄▄[0m  
 [0;1;31;91m▀[0;1;33;93m▀▀[0;1;32;92m▀▀[0;1;36;96m▀▀[0;1;34;94m▀[0m  [0;1;35;95m▀[0;1;31;91m▀▀[0;1;33;93m▀▀[0;1;32;92m▀▀[0;1;36;96m▀[0m  [0;1;34;94m▀[0;1;35;95m▀[0m    [0;1;33;93m▀[0;1;32;92m▀[0m     [0;1;35;95m▀▀[0;1;31;91m▀▀[0m   [0;1;32;92m▀[0;1;36;96m▀[0m    [0;1;35;95m▀[0;1;31;91m▀[0m    [0;1;32;92m▀[0;1;36;96m▀▀[0;1;34;94m▀[0m     [0;1;33;93m▀▀[0;1;32;92m▀▀[0;1;36;96m▀▀[0m      [0;1;33;93m▀▀[0;1;32;92m▀▀[0m  
                                                                                
                                                                                
" 
	
	fi
	echo ""		

}

print_title(){
	if [ "$VERBOSE" ]; then
		END_T2_TIME=$(date +%s 2>/dev/null)
		if [ "$START_T2_TIME" ]; then
			TOTAL_T2_TIME=$(($END_T2_TIME - $START_T2_TIME))
			printf $DG"This check took $TOTAL_T2_TIME seconds\n"$NC
		fi

		END_T1_TIME=$(date +%s 2>/dev/null)
		if [ "$START_T1_TIME" ]; then
			TOTAL_T1_TIME=$(($END_T1_TIME - $START_T1_TIME))
			printf $DG"The total section execution took $TOTAL_T1_TIME seconds\n"$NC
			echo ""
		fi

		START_T1_TIME=$(date +%s 2>/dev/null)
	fi

	printf ${BLUE}"════════════════════════════════════╣ $GREEN$1${BLUE} ╠════════════════════════════════════\n"$NC
}

print_2title(){
	if [ "$VERBOSE" ]; 
		then
			END_T2_TIME=$(date +%s 2>/dev/null)
		if [ "$START_T2_TIME" ]; 
			then
				TOTAL_T2_TIME=$(($END_T2_TIME - $START_T2_TIME))
				printf $DG"This check took $TOTAL_T2_TIME seconds\n"$NC
				echo ""
		fi

		START_T2_TIME=$(date +%s 2>/dev/null)
	fi

	printf ${BLUE}"╔══════════╣ $GREEN$1\n"$NC #There are 10 "═"
}

print_info(){
	printf "${BLUE}╚ ${ITALIC_BLUE}$1\n"$NC
}

print_3title(){
 	printf ${BLUE}"══╣ $GREEN$1\n"$NC #There are 2 "═"
}

print_list(){
	printf ${BLUE}"═╣ $GREEN$1"$NC #There is 1 "═"
}

print_RY(){
	printf "${RED}$1:${YELLOW}[+]sudo -u#-1 /bin/bash\n"$NC
}

print_URL(){
	printf "${BLUE}$1\n"$NC
}

print_ALL(){
	printf "${BLUE}══╣ ${GREEN}$1${BLUE} ╠══\n"$NC
}

print_ROOT(){
	printf "${BLUE}$1\n${RED}"
}

# ---------------------------------------------------------------------------------
# Main program starts

# if [ "$(/usr/bin/id -u)" -eq "0" ]; then
# 	IAMROOT="1"
# 	MAXPATH_FIND_W="3"
# else
# 	IAMROOT=""
# 	MAXPATH_FIND_W="7"
# fi

#Starting with banner printing
print_BANNER


# All variables
idB="euid|egid$baduid"
sudovB="[01].[012345678].[0-9]+|1.9.[01234]|1.9.5p1"

groupsB="\(root\)|\(shadow\)|\(admin\)|\(video\)|\(adm\)|\(wheel\)|\(auth\)"
groupsVB="\(sudo\)|\(docker\)|\(lxd\)|\(disk\)|\(lxc\)"
knw_grps='\(lpadmin\)|\(cdrom\)|\(plugdev\)|\(nogroup\)' #https://www.togaware.com/linux/survivor/Standard_Groups.html
mygroups=$(groups 2>/dev/null | tr " " "|")


knw_usrs='daemon\W|^daemon$|message\+|syslog|www|www-data|mail|noboby|Debian\-\+|rtkit|systemd\+'
USER=$(whoami 2>/dev/null || echo "UserUnknown")
if [ ! "$HOME" ]; 
	then
		if [ -d "/Users/$USER" ]; 
		then 
			HOME="/Users/$USER"; #Mac home
		else 
			HOME="/home/$USER";
		fi
fi
Groups="ImPoSSssSiBlEee"$(groups "$USER" 2>/dev/null | cut -d ":" -f 2 | tr ' ' '|')

OLDPATH=$PATH
ADDPATH=":/usr/local/sbin\
	:/usr/local/bin\
	:/usr/sbin\
	:/usr/bin\
	:/sbin\
	:/bin"
spath=":$PATH"
for P in $ADDPATH; do
	if [ "${spath##*$P*}" ]; 
		then export PATH="$PATH$P" 2>/dev/null; 
fi
done

E=E
echo | sed -${E} 's/o/a/' 2>/dev/null
if [ $? -ne 0 ] ; then
	echo | sed -r 's/o/a/' 2>/dev/null
	if [ $? -eq 0 ] ; then
		E=r
	else
		echo "${YELLOW}WARNING: No suitable option found for extended regex with sed. Continuing but the results might be unreliable.${NC}"
	fi
fi

#-- UI) My user
print_2title "My User"
print_info "https://book.hacktricks.xyz/linux-unix/privilege-escalation#users"
(id || (whoami && groups)) 2>/dev/null | sed -${E} "s,$groupsB,${SED_RED},g" | sed -${E} "s,$groupsVB,${SED_RED_YELLOW},g" | sed "s,$USER,${SED_LIGHT_MAGENTA},g" | sed -${E} "s,$knw_usrs,${SED_GREEN},g" | sed "s,root,${SED_RED}," | sed -${E} "s,$knw_grps,${SED_GREEN},g" | sed -${E} "s,$idB,${SED_RED},g"
echo ""

print_ROOT "Super User Accounts"
awk -F: '($3 == "0") {print}' /etc/passwd 2>/dev/null 
echo ""

#-- SY) Sudo
print_2title "Sudo version"

if [ "$(command -v sudo 2>/dev/null)" ];
	then
		print_info "https://book.hacktricks.xyz/linux-unix/privilege-escalation#sudo-version"
		sudo -V 2>/dev/null | grep "Sudo ver" | sed -${E} "s,$sudovB,${SED_RED},"

	sv=$(sudo -V 2>/dev/null | head -1 | grep -E "[0-9][a-z]*\.*" | cut -d ' ' -f3)
	#sv=1.27
	vsv=1.28
	if (( $(echo $sv'<='$vsv | bc -l 2>/dev/null) ));
		then
			#print_info 
			print_RY "Exploit"
	fi

else echo_not_found "sudo"

fi
echo ""


#-- SY) PATH
print_2title "PATH"
print_info "https://book.hacktricks.xyz/linux-unix/privilege-escalation#writable-path-abuses"
echo "$OLDPATH" 2>/dev/null | sed -${E} "s,$Wfolders|\./|\.:|:\.,${SED_RED_YELLOW},g"
echo "New path exported: $PATH" 2>/dev/null | sed -${E} "s,$Wfolders|\./|\.:|:\. ,${SED_RED_YELLOW},g"

echo ""

print_title "Kernel Info"
#printf "${RED}$(uname -a || cat /proc/version 2>/dev/null)\n"
 

printf $LG$"Hostname: "$GREEN
hostname 2>/dev/null

printf $LG$"OS: "$GREEN
(uname -o ) 2>/dev/null

printf $LG$"Kernel Version: "$GREEN
(uname -v ) 2>/dev/null

printf $LG$"Kernel Release: "$GREEN
(uname -r ) 2>/dev/null

printf $LG$"System Architecture: "$GREEN
(uname -m ) 2>/dev/null
echo ""

#print_title "Environment Information"
#(env || set) 2>/dev/null

# print_title "CPU Information"
# lscpu 2>/dev/null

print_info "Date"
date 2>/dev/null
echo ""
echo ""

#-- 1AS) Useful software
print_title "Useful Softwares"
command -v "$CONTAINER_CMDS" nmap aws nc ncat netcat nc.traditional wget curl ping gcc g++ make gdb base64 socat python python2 python3 python2.7 python2.6 python3.6 python3.7 perl php ruby xterm doas sudo fetch ctr 2>/dev/null
echo ""



print_title "Cornjobs"
print_URL "https://book.hacktricks.xyz/linux-unix/privilege-escalation#scheduled-cron-jobs"

(crontab -l || ls -al /etc/cron* /etc/at* 2>/dev/null || cat /etc/cron* /etc/at* /etc/anacrontab /var/spool/cron/crontabs/root 2>/dev/null | grep -v "^#"
)
echo ""

print_title "PATH used by systemd"
systemctl show-environment 2>/dev/null

echo ""

print_title "Routing Table"
route 2>/dev/null

echo ""

print_ALL "Hosts in /etc/hosts"
echo ""
cat /etc/hosts 2>/dev/null
echo ""

#Interfaces
print_title "Interfaces"
echo ""
cat /etc/networks 2>/dev/null
(ifconfig || ip a 2>/dev/null)
echo ""

#Neighbours
print_title "Neighbours"
echo ""
(arp -e || arp -a 2>/dev/null)
echo ""

print_title "Open ports"
echo ""
(netstat -punta || ss --ntpu 2>/dev/null) | grep "127.0"
echo ""


if [ "$(command -v nmap 2>/dev/null)" ];then
	NMAP_GOOD=$GREEN"nmap${BLUE} is available for network discover & port scanning, you should use it yourself"
	printf $YELLOW"[+] $NMAP_GOOD\n$NC"
fi
echo ""
echo ""

print_ALL "Run this for more user information"
echo ""
echo "${YELLOW}for i in \$(cut -d"\:" -f1 /etc/passwd 2>/dev/null);do id \$i;done 2>/dev/null | sort"
echo ""

print_ALL "Trying sudo -l"
echo "" 
# try excpet here
$(echo '' | sudo -S -l 2>/dev/null )  || echo "Can't run try running ${RED}sudo -l${NC} with password"
echo ""

print_ALL "Trying to find ssh keys"
echo ""
path=$(grep -r " .* PRIVATE *" $HOME/.ssh | head -1 | cut -d ':' -f1)
if [ $path ];
	then
		echo "${RED}ssh keys here ${path}"
else
	echo "Can't access ssh keys look manually"
fi
echo ""

print_title "SUID Binaries"
echo ""
find / -perm -4000 2>/dev/null
#find / -user root -perm -4000 -exec ls -ldb {} \; 2>/dev/null
echo ""


# print_title "Processes"
# (ps -ef || ps aux 2>/dev/null)
# echo ""