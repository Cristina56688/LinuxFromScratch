1. Host System Requirements - verificarea daca sistemul gazda indeplineste cerintele hardware si sftware minime necesare
                            - scriptul verison_check.sh pentru verificare
2. Creating a New Partition - crearea unei partitii noi dedicate sistemului LFS pe un disk gol
                            - creare partitie swap
                            - alte partitii suplimentare
                            - scriptul partitionare.sh creeaza partitiile
3. Packages - descarcarea pachetelor necesare pt constructa sistemului
            - downloads.sh, wget-list
4. Creating a Limited Directory Layout in the LFS Filesystem - crearea unei ierarhii limitate de directoare folosita pentru instalarea pachetelor
5. Adding the LFS User - crearea unui utilizator neprivilegiat lfs folosit pt a compila sistemul LFS
6. Setting Up the Environment - crearea unui mediu de lucru sigur si izolat pt utilizatorul lfs
7. Compiling a Cross-Toolchain - construirea unui cross-compiler (compilator ce compileaza cod pt un sistem diferit fata de cel pe care ruleaza) si a altor tool-uri asociate
8. Cross Compiling Temporary Tools - instalarea unor tool-uri intr-un loc provizoriu folosind toolchainul construit anterior
9. Changing Ownership - schimbarea ownership-ului directoarelor $LFS/* la root
10. Preparing Virtual Kernel File Systems - montarea unor sisteme speciale (ex: /dev, /proc,                                                  /sys, /run, /shm) care sunt folosite de kernel pt a                                               comunica cu alplicatii din userspace
11. Entering the Chroot Environment - folosirea chroot pentru a schimba '/' in '/mnt/lfs'
                                    - /mnt/lfs va fi vazut acum ca radacina sistemului de fisiere
12. Creating Directories - crearea directoarelor standard pentru un sistem Linux complet
13. Creating Essential Files and Symlinks - fisierele: /etc/mtab, /etc/hosts, /etc/passwd,                                                    /etc/group
14. Other Packages
15. Installing Basic System Software - folosind uneltele temporare create anterior pentru compilarea pachetelor                                         direct in sistemul chroot, folosind bibliotecile si binarele proprii, nu                                         cele ale sistemului gazda


Scurta descriere pachete instalate:

Man-pages        - Documentatie pentru apeluri de sistem si functii din libc

Iana-Etc         - Fisiere cu nume si porturi standardizate (protocols, services)

Glibc            - Biblioteca C principala a sistemului

Zlib             - Compresie/decompresie cu algoritmul deflate

Bzip2            - Utilitar de compresie/decompresie cu algoritmul bzip2

Xz               - Compresie/decompresie cu algoritmul LZMA

Lz4              - Compresie rapida, cu rata mica

Zstd             - Algoritm de compresie rapid si eficient de la Facebook

File             - Detecteaza tipul unui fisier pe baza continutului

Readline         - Ofera editare de linie de comanda (folosit de Bash)

M4               - Preprocesor de macro-uri folosit in scripturi de build

Bc               - Calculator aritmetic in linie de comanda cu precizie mare

Flex             - Generator de analizatori lexicale (scanner)

Tcl              - Limbaj de scripting (necesar pentru Expect)

Expect           - Automatizeaza interactiuni cu programe care cer input

DejaGNU          - Framework de testare pentru GNU (folosit la make check)

Pkgconf          - Gestioneaza dependintele bibliotecilor (pkg-config)

Binutils         - Colectie de unelte pentru asamblare, linking, etc.

GMP              - Biblioteca pentru aritmetica cu numere mari

MPFR             - Aritmetica cu precizie multipla pe baza GMP

MPC              - Operatii aritmetice pe numere complexe

Attr             - Manipuleaza atribute extinse ale fisierelor

Acl              - Acces control lists (permisiuni avansate)

Libcap           - Suport pentru capability-uri POSIX (permisiuni fine)

Libxcrypt        - Biblioteca pentru criptarea parolelor (folosita de Shadow)

Shadow           - Gestionarea utilizatorilor si a parolelor

GCC              - Compilatorul GNU pentru C si C++

Ncurses          - Afisare text in terminal (cu culori, pozitionare etc.)

Sed              - Editor de flux text, folosit in scripturi

Psmisc           - Unelte pentru administrarea proceselor (killall, fuser etc.)

Gettext          - Suport pentru localizare (i18n)

Bison            - Generator de parsere (analizatori sintactici)

Grep             - Cauta texte in fisiere folosind expresii regulate

Bash             - Shell-ul standard

Libtool          - Ajuta la crearea de biblioteci partajate

GDBM             - Baza de date simpla key-value

Gperf            - Creeaza tabele de cautare hash optimizate

Expat            - Parser XML rapid, bazat pe C

Inetutils        - Unelte de retea (ftp, telnet, hostname etc.)

Less             - Vizualizator de fisiere text, similar cu more

Perl             - Limbaj de scripting versatil

XML::Parser      - Parser XML in Perl (bazat pe Expat)

Intltool         - Prelucreaza fisiere de traduceri pentru programe

Autoconf         - Genereaza scripturi configure

Automake         - Genereaza Makefile-uri portabile

OpenSSL          - Criptografie si protocoale de securitate (TLS/SSL)

Libelf           - Manipuleaza fisiere ELF (folosit in build tools)

Libffi           - Ajuta la apeluri de functii dinamice din alte limbaje

Python           - Limbaj de programare general, esential pentru multe unelte

Flit-Core        - Instaleaza pachete Python simplu (pentru proiecte moderne)

Packaging        - Componente Python pentru sistemul de pachete

Wheel            - Format standardizat pentru distributii Python

Setuptools       - Utilitar pentru instalare pachete Python

Ninja            - Sistem rapid de build

Meson            - Sistem de build modern, folosit cu Ninja

Kmod             - Gestioneaza modulele de kernel (insmod, modprobe etc.)

Coreutils        - Comenzi de baza (ls, cp, mv, rm, etc.)

Diffutils        - Compara fisiere si directoare (diff, cmp)

Gawk             - Procesare de text avansata (implementare AWK)

Findutils        - Cauta fisiere in sistem (find, xargs etc.)

Groff            - Formatare si tiparire text (folosit pentru man pages)

GRUB             - Bootloader pentru pornirea sistemului

Gzip             - Utilitar de compresie cu algoritmul gzip

IPRoute2         - Set de unelte pentru configurare retea (ip, ss)

Kbd              - Configurare tastatura si fonturi pentru consola

Libpipeline      - Ajuta la crearea de pipeline-uri de comenzi

Make             - Automatizeaza compilarea programelor

Patch            - Aplica diferente (.diff) pe fisiere sursa

Tar              - Creeaza si extrage arhive tar

Texinfo          - Format de documentatie GNU

Vim              - Editor de text avansat in consola

MarkupSafe       - Biblioteca Python pentru text sigur in HTML/XML

Jinja2           - Templating engine pentru Python (folosit de Meson)

Udev (Systemd)   - Gestioneaza dispozitivele din /dev

Man-DB           - Sistem de afisare si indexare a paginilor de manual

Procps-ng        - Informatii despre procese (ps, top, free etc.)

Util-linux       - Diverse unelte de sistem (mount, fdisk, login etc.)

E2fsprogs        - Unelte pentru fisiere ext4 (fsck, mkfs, tune2fs etc.)

Sysklogd         - Daemon pentru loguri de sistem

SysVinit         - Sistem de initializare traditional (pornire servicii)

