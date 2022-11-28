#!/bin/bash

echo "Criando diretorios!"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos!"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários!"

useradd pedro -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd jonathan -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd camila -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd luiza -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd pamela -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd daniel -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd victor -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd gabriel -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC

echo "Adicionando usuários aos grupos!"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

