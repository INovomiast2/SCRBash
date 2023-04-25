#!/bin/bash

#FAST INSTALLER SCRIPT


if [ $UID -gt 0 ]; then
    clear
    echo -e "\e[1;31m [ERROR]: \e[0mDEBE CORRER $0 como ROOT!!"
    exit 1
else
    installed() {
        return $(dpkg-query -W -f '${Status}\n' "${1}" 2>&1|awk '/ok installed/{print 0;exit}{print 1}')
    }
    clear
    echo -e "\e[32m [BIENVENIDO]: \e[0mInstalador de ScriptManager!!"
    sleep 1

    PACKAGES=("git" "lolcat" "gcc" "gh" "wget" "curl")
    
    for i in "${PACKAGES[@]}"; do
        echo -e "\e[1;36m ---------------------------------------- \e[0m"
        echo -e "\e[32m [COMPROBANDO]: \e[0mPACKAGE: \e[1;34m$i\e[0m"
        if installed $i; then
            echo -e "\e[1;32m [ESTADO]: \e[0mPACKAGE INSTALLED ✅"
            sleep 3
        else
            echo -e "\e[1;36m ---------------------------------------- \e[0m"
            echo -e "\e[1;31m [ESTADO]: \e[0mPACKAGE NOT INSTALLED ❌"
            echo -e "\e[1;33m [INSTALANDO]: \e[0mINSTALLING PACKAGE 📟 \e[1;34m$i\e[0m"
            sleep 3
            apt-get install $i --yes >/dev/null 2>&1
            if installed $i; then
                echo -e "\e[1;32m [ESTADO]: \e[0mPACKAGE INSTALLED ✅"
                sleep 3
            fi
        fi
    done

    if installed gh; then
        echo -e "\e[40m ---------------------------------------- \e[0m"
        echo -e "\e[1;35m [⚙️CONFIGURACION]: \e[0mCONFIGURING PACKAGE - \e[1;34mgh-cli\e[0m"
        sleep 2
        echo -e "\e[1;36m [\e[1m⚙️GitHubCLI]\e[0m: \e[0mCONFIGURING PACKAGE - \e[1;35mAuthorization\e[0m"
        sleep 1
        echo -e "\e[1;36m [\e[1m⚙️GitHubCLI]\e[0m: \e[0mCONFIGURING PACKAGE - \e[1;35mStarting GHCLI-Auth\e[0m"
        sleep 2
        if ! gh auth status >/dev/null 2>&1; then
            echo -e "\e[1;36m [\e[1m⚙️GitHubCLI]\e[0m: \e[0mCONFIGURING PACKAGE - \e[1;31mNOT AUTHENTIFICATED\e[0m"
            sleep 1
            echo -e -n "\e[1;36m [\e[1m⚙️GitHubCLI]\e[0m: \e[0mCONFIGURING PACKAGE - \e[1;31mAUTHENTICATE?[y/n]:\e[0m"
            read OPT
            if [ $OPT = "y" -a "Y" ]; then
                echo -e "\e[1;36m [\e[1m⚙️GitHubCLI]\e[0m: \e[0mCONFIGURING PACKAGE - \e[1;33mGCLI-Auth\e[0m"
                gh auth login
            else
                echo -e "\e[1;36m [\e[1m⚙️GitHubCLI]\e[0m: \e[0mCONFIGURING PACKAGE - \e[1;33mSKIPPING...\e[0m"
                sleep 1
                echo -e "\e[1;35m [⚙️CONFIGURACION]: \e[0mCONFIGURING PACKAGE - \e[1;34mrequire.txt\e[0m"
                sleep 2
                echo -e "\e[1;35m [⚙️REQUIREMENTS]: \e[0mCONFIGURING REQUIREMENTS - \e[1;34mReading file\e[0m"
                touch require.txt
                echo https://raw.githubusercontent.com/INovomiast-IESFuengirola1/SCRBash-CLI/main/docs/help.sh >> require.txt
                sleep 2
                echo -e "\e[1;35m [⚙️REQUIREMENTS]: \e[0mCONFIGURING REQUIREMENTS - \e[1;34mDownloading REQUIREMENTS!\e[0m"
                sleep 2
                mkdir requirements
                cd requirements
                while read -r line; do curl -O $line; done < ./require.txt 2> /dev/null
                cd ..
                sleep 2
                echo -e "\e[1;35m [⚙️REQUIREMENTS]: \e[0mCONFIGURING REQUIREMENTS - \e[1;32mREQUIREMENTS SATISFIYED!!\e[0m"
                
            fi
        fi
    fi

fi