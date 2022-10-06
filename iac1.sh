#!/bin/bash

rm -Rf /adm/
rm -Rf /publica/
rm -Rf /ven/
rm -Rf /sec/

echo "Criando Diretorios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Diretorios Criados"

echo "Criado Grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos Criados"

echo "Criando Usuarios"
useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -c "Joao" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Adicionando Usuários aos Grupos"

echo "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Finalizado..."

