#!/bin/bash
# -*- ENCODING: UTF-8 -*-
rep=0
while [$rep==0]
do
echo "bienvendo al sistema de gestion de usuarios"
echo "1- nuevo usuario"
echo "2- setear elementos necesarios (solo primera vez)"
read x
case x in
1)
echo "ingrese el nombre del nuevo usuario"
read user
useradd "$user"
autenticador=0
while [$autenticador==0]
do
echo "ingrese contraseña"
read contra
echo "ingrese nuvamente la contraseña"
read contra1
if ($contra = $contra1){
    passwd "$user"
    $autenticador=1
}
else{
echo "la contrasña no cocide"
echo ""
echo "intentelo de nuevo------------------------------------------------------------------------------------------------------------------------------------"
}
done
echo "seleccione el tipo de usuario"
echo "1-tutor"
echo "2-administrador"
read tipe
case tipe in
1) adduser "$user" tutores;;
2) adduser "$user" administradores;;
*) echo "opcion no contemplada"
done
;;
2)
mkdir "grupos"
mkdir "diario"
gropadd "tutores"
gropadd "administradores"
grupadd "standar"
;;
3)
exit
*)
echo "opcion no valida";;
done