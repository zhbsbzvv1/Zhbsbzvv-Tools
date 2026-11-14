#!/bin/bash

clear
mkdir -p Tools
clear 

echo -e "\033[31;40;1m \
 _____  __ __  ____    _____ ____   _____  __ __  __ __ \n\
|     T|  T  T|    \\  / ___/|    \\ |     T|  T  ||  T  |\n\
l__/  ||  l  ||  o  )(   \\_ |  o  )l__/  ||  |  ||  |  |\n\
|   __j|  _  ||     T \\__  T|     T|   __j|  |  ||  |  |\n\
|  /  ||  |  ||  O  | /  \\ ||  O  ||  /  |l  :  !l  :  !\n\
|     ||  |  ||     | \\    ||     ||     | \\   /  \\   / \n\
l_____jl__j__jl_____j  \\___jl_____jl_____j  \\_/    \\_/  \n\
                                                        \n\
  GitHub: https://github.com/zhbsbzvv1\n\
\033[33;4mVersiyon:\033[0m 1.7       \033[33;4mCTRL+C:\033[0m çıkış         \033[33;4mYazar:\033[0m Zhbsbzvv\n\n\
\e[37m[1]\e[36m Güncelleme & Gereksinimler    \e[37m[2]\e[36m Zphisher                      \n\
\e[37m[3]\e[36m TBomb                         \e[37m[4]\e[36m CamPhish                      \n\
\e[37m[5]\e[36m Facebash                      \e[37m[6]\e[36m Track-IP                      \n\
\e[37m[7]\e[36m RedHawk                       \e[37m[8]\e[36m HackerPro                     \n\
\e[37m[9]\e[36m İndirilenleri Temizle         \e[37m[10]\e[36m Çıkış                        \n\
"

read -p "Seçiminiz (Örn: 1): " islem

case $islem in
    1|01)
        clear
        echo -e "\033[47;31;5m Gereksinimler yükleniyor...\033[0m"
        sleep 2
        pkg update && pkg upgrade -y
        pkg install git python python3 curl php tor -y
        echo -e "\033[47;3;35m İşlem tamamlandı!\033[0m"
        sleep 2
        bash tool.sh
        ;;
        
    2|02)
        clear
        echo -e "\033[47;3;35m Zphisher kuruluyor...\033[0m"
        sleep 2
        cd Tools
        git clone https://github.com/htr-tech/zphisher.git
        cd zphisher
        bash zphisher.sh
        ;;
        
    3|03)
        clear
        echo -e "\033[47;3;35m TBomb kuruluyor...\033[0m"
        sleep 2
        cd Tools
        git clone https://github.com/TheSpeedX/TBomb.git
        cd TBomb
        bash TBomb.sh
        ;;
        
    4|04)
        clear
        echo -e "\033[47;3;35m CamPhish kuruluyor...\033[0m"
        sleep 2
        cd Tools
        git clone https://github.com/techchipnet/CamPhish.git
        cd CamPhish
        bash camphish.sh
        ;;
        
    5|05)
        clear
        echo -e "\033[47;3;35m Facebash kuruluyor...\033[0m"
        sleep 2
        cd Tools
        git clone https://github.com/fu8uk1/facebash
        cd facebash
        bash install.sh
        chmod +x facebash.sh
        tor
        sudo ./facebash.sh
        ;;
        
    6|06)
        clear
        echo -e "\033[47;3;35m Track-IP kuruluyor...\033[0m"
        sleep 2
        cd Tools
        git clone https://github.com/htr-tech/track-ip.git
        cd track-ip
        bash trackip
        ;;
        
    7|07)
        clear
        echo -e "\033[47;3;35m RedHawk kuruluyor...\033[0m"
        sleep 2
        cd Tools
        git clone https://github.com/Tuhinshubhra/RED_HAWK
        cd RED_HAWK
        php rhawk.php
        ;;

    8|08)
        clear
        echo -e "\033[47;3;35m HackerPro kuruluyor...\033[0m"
        sleep 2
        cd Tools
        apt update && apt upgrade && apt install git && apt install python2
        git clone https://github.com/jaykali/hackerpro.git
        cd hackerpro
        sudo bash install.sh
        python2 hackerpro.py
        ;;
        
    9|09)
        clear
        echo -e "\033[47;3;35m İndirilen araçlar temizleniyor...\033[0m"
        sleep 2
        rm -rf Tools
        echo -e "\033[47;3;35m Temizlik bitti.\033[0m"
        sleep 2
        bash tool.sh
        ;;
        
    10|010)
        echo "Çıkış yapılıyor..."
        exit 0
        ;;
        
    *)
        clear
        echo -e '\033[36;40;1m Hatalı seçim yaptınız!'
        sleep 1
        clear
        bash tool.sh
        ;;
esac
