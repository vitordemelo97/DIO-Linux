#!/bin/bash

echo "Configurando o Sistema..."

mkdir /publico /adm /ven /sec

echo "Diretórios criados com sucesso"

groupadd GRP_ADM
echo "Grupo GRP_ADM Criado"

groupadd GRP_VEN
echo "Grupo GRP_VEN Criado"

groupadd GRP_SEC
echo "Grupo GRP_SEC Criado"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

useradd carlos -c "Carlos da Silva" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_ADM
passwd guest2 -e
echo "Usuário carlos adicionado ao Sistema"

useradd maria -c "Maria da Silva" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_ADM
passwd guest2 -e
echo "Usuário maria adicionado ao Sistema"

useradd joao -c "João da Silva" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_ADM
passwd guest2 -e
echo "Usuário joao adicionado ao Sistema"

echo "Usuários do grupo GRP_ADM adicionados com sucesso"

useradd debora -c "Debora da Silva" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_VEN
passwd guest2 -e
echo "Usuário debora adicionado ao Sistema"

useradd sebastiana -c "Sebastiana da Silva" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_VEN
passwd guest2 -e
echo "Usuário debora adicionado ao Sistema"

useradd roberto -c "Roberto da Silva" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_VEN
passwd guest2 -e
echo "Usuário roberto adicionado ao Sistema"

echo "Usuários do grupo GRP_VEN adicionados com sucesso"

useradd josefina -c "Josefina da Silva" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_SEC
passwd guest2 -e
echo "Usuário josefina adicionado ao Sistema"

useradd amanda -c "Amanda da Silva" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_SEC
passwd guest2 -e
echo "Usuário amanda adicionado ao Sistema"

useradd rogerio -c "Rogério da Silva" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_SEC
passwd guest2 -e
echo "Usuário rogerio adicionado ao Sistema"

echo "Usuários do grupo GRP_SEC adicionados com sucesso"


echo "Finished"
