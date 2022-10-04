
#! /bin/bash

echo "Criando diretorio..."

mkdir /publico
mkdir /adm
mkdir /ven 
mkdir /sec


echo "Criando Grupos de usuario..."

groupadd GRP_ADM
groupadd GPR_VEN
groupadd GRP_SEC


echo "Criando Usuarios..."

useradd carlos -c "Carlos Silva" -m -s/bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria Silva" -m -s/bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "Joao Silva" -m -s/bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -c "Debora Souza" -m -s/bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_VEN
useradd sebastiana -c "Sebastiana Souza" -m -s/bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_VEN
useradd roberto -c "Roberto Souza" -m -s/bin/bash -p $(openssl passwd -crypt Senha123) -G GPR_VEN

useradd josefina -c "Josefina Santos"-m -s/bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Amanda Silva" -m -s/bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Silva" -m -s/bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GPR_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
