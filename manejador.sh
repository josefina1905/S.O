#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#camilo danielli
rep=0
while [ $rep = 0 ]
do
echo "bienvendo al sistema de gestion de usuarios"
echo "1- nuevo usuario tutor"
echo "2- setear elementos necesarios (solo primera vez)"
echo "3- salir"
read x
case $x in
1)
echo "ingrese el nombre del nuevo usuario"
read user
sudo useradd "$user"
autenticador=0
while [$autenticador==0]
do
echo "ingrese contraseña"
read contra
echo "ingrese nuvamente la contraseña"
read contra1
if ($contra = $contra1)
then
    sudo passwd "$user" "$contra"
    $autenticador=0


else
echo "la contrasña no cocide"
echo ""
echo "intentelo de nuevo------------------------------------------------------------------------------------------------------------------------------------"
fi
useradd "$user" tutores
done
;;
2)
sudo useradd -p "admin" "admin"
sudo passwd admin "admin"
mkdir "grupos"
mkdir "diario"
cat > alumnos.txt
cat > docentes.txt
gropadd "tutores"
sudo chown Admin -R ../
sudo chgrp tutores -R ../
sudo chamod 770 -R ../
sudo chamod 700 manejador.sh
sudo chamod 777 estudiantes.sh
sudo chamod 777 registrador.sh
;;
3)
rep=1
exit ;;
*)
echo "opcion no valida";;
esac
done
