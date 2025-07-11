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
