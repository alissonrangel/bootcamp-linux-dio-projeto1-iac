#!/bin/bash

echo "Removendo pastas..."
rm -rfv /publico
rm -rfv /adm
rm -rfv /ven
rm -rfv /sec

echo "Removendo grupos..."

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Removendo usuarios..."
userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio
 
echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando pastas..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Atribuindo grupos as pastas..."
chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Alterando as permissoes das pastas..."
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Criando usuarios..."
useradd carlos -c "Carlos" -s /bin/bash -m -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -G GRP_ADM
useradd joao -c "Joao" -s /bin/bash -m -G GRP_ADM
useradd debora -c "Debora" -s /bin/bash -m -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -G GRP_VEN
useradd josefina -c "Josefina" -s /bin/bash -m -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -G GRP_SEC
useradd rogerio -c "Rogerio" -s /bin/bash -m -G GRP_SEC

echo "Fim do script!!!"
