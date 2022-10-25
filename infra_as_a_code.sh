#!/bin/bash
echo "Criando Pastas"
mkdir /vendas
mkdir /admin
mkdir /sec
mkdir /publico

echo "Criando Grupos"

groupadd GRP_VENDAS
groupadd GRP_ADMIN
groupadd GRP_SEC

echo "criando Usuários"

useradd carlos -m -s /bin/bash -p $(openssl passwd asdf01) -g GRP_ADMIN 
useradd maria -m -s /bin/bash -p $(openssl passwd asdf01) -g GRP_ADMIN
useradd joao -m -s /bin/bash -p $(openssl passwd asdf01) -g GRP_ADMIN

useradd debora -m -s /bin/bash -p $(openssl passwd asdf01) -g GRP_VENDAS
useradd sebastiana -m -s /bin/bash -p $(openssl passwd asdf01) -g GRP_VENDAS
useradd roberto -m -s /bin/bash -p $(openssl passwd asdf01) -g GRP_VENDAS

useradd josefina -m -s /bin/bash -p $(openssl passwd asdf01) -g GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd asdf01) -g GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd asdf01) -g GRP_SEC

echo "Defindo Permissões"

chown -v root /vendas
chown -v root /admin
chown -v root /sec
chown -v root /publico

chmod -v 770 /vendas
chmod -v 770 /admin
chmod -v 770 /sec
chmod -v 777 /publico
