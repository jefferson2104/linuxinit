criando script 

#! /bin/bash

echo "criando diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo " criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando user ADM"

useradd carlos -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_ADM

echo "criando user VEN”

useradd debora -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_VEN
useradd croberto -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_VEN

echo "criando user SEC”

useradd josefina -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_SEC
useradd aamanda -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $ (openssl passwd -crypt senha123) -G GRP_SEC


echo "permissoes do diretorio"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo “END”
