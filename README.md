# LinGhost - Linux Privilege Escalation Tool

> Saikat Karmakar | Aug : 2021

![](images/untitled.png)

- This tool gives information about critical files which can be used for privilege escalation on linux/unix systems. It is heavily inspired by `Linpease` but more simple and intended to do CTF challenges like HackTheBox, TryHackme etc.

- I used the methods of `HackTricks`(https://book.hacktricks.xyz/linux-unix/privilege-escalation) and tried to keep this as simple as possible and beginner friendly.

#### Usage
```bash
git clone https://github.com/Aviksaikat/LinGhost
cd LinGhost
chmod +x ./linGhost.sh
./linGhost.sh
```

#### Screenshots
- Banner
![](images/banner.png)

- User information 
![](images/pic1.png)
- Sudo version
![](images/pic2.png)
- Path information
![](images/pic3.png)
- Kernel information
![](images/pic4.png)
- Useful softwares installed on the machine
![](images/pic5.png)
- Cronjobs 
![](images/pic6.png)
- Routing table
![](images/pic8.png)
- Hosts file
![](images/pic9.png)
- Open local ports 
![](images/pic10.png)
- Suggested commands
![](images/pic11.png)
- SUID binaries
![](images/pic12.png)

[-] Todo : Documentation

##### P.S. This is not a Linpease alternative. It"s for fun and CTF purpose only.