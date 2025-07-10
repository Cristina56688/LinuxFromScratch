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
