#!/bin/bash

echo "Criando diretórios..."

mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo "Criando grupos de usuários..."

groupadd -g  GRP_ADM
groupadd -g GRP_VEN
groupadd -g GRP_SEC

echo "Criando usuários..."

useradd paulo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd marina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd jose -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd cicero -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd joana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd fabio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd kaio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd dorival -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd samuel -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especifcando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."


