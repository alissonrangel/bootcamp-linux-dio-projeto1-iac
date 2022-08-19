#!/bin/bash

rm -rfv /publico
rm -rfv /adm
rm -rfv /ven
rm -rfv /sec

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio
