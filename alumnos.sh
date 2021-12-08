NUEVOOOO




ls /grupos | grep $grupo

echo "Bienvenido, seleccione una opcion"

echo "1-Registrarse"
echo "2-Opciones"
read opc
case $opc in 
	1) 
	echo "1-Alumnos"
	echo "2-Docentes"
	read opc1
	;;

	2)
	echo "1-Administrador"
	echo "2-Tutor"
	read opc2
	;;

	*)

	echo "Opcion incorrecta, intente de nuevo"
	read opc3
	;;

esac 

if [ "$opc1" == "1" ]; then 
	echo "Ingrese su Ci"
	read Ci
	echo "Ingrese su nombre"
	read nombre
	echo "Ingrese su apellido"
	read apellido
	echo "Ingrese su telefono"
	read telefono 
	echo "Ingrese el grupo al que corresponda el alumno"
	read grupo	
	echo "$Ci - $nombre - $apellido - $telefono - $grupo" 
fi


	if [ "$opc1" == "2" ]; then 
	echo "Ingrese su Ci"
	read Ci
	echo "Ingrese su nombre"
	read nombre
	echo "Ingrese su apellido"
	read apellido
	echo "Ingrese su telefono"
	read telefono 
	echo "Ingrese la materia"
	read materia
	echo "$Ci - $nombre - $apellido - $telefono - $materia"

if

	if [ "$opc2" == "1" ]; then 
	echo "1-Altas Alumnos"
	echo "2-Bajas Alumnos"
	echo "3-Modificar Alumnos"
	echo "4-Buscar Alumno"
	echo "5-Asistencia Alumno"
	echo "6-Crear Tutor"
	read opc4

fi

case $opc4 in 
	1)
	echo "Ingrese su Ci"
	read Ci
	echo "Ingrese su nombre"
	read nombre
	echo "Ingrese su apellido"
	read apellido
	echo "Ingrese su telefono"
	read telefono 
	echo "$Ci - $nombre - $apellido - $telefono"
	;;

	2)
	echo "Ingrese la ci del alumno"
	read ci
	sed -1 "/$ci/d" 


	3)
    	echo "Ingrese la cedula del alumno que desea cambiar"
  	read cedula1
	echo "Ingrese el nuevo nombre del alumno"
	read nombre1
	echo "Ingrese el nuevo apellido del alumno"
	read apellido1
	echo "Ingrese el nuevo telefono del alumno"
	read telefono1
	echo "Ingrese el nuevo grupo del alumno"
	read grupo1
	sed -i  "s $ci- $nombre - $apellido/ $cedula1 - $nombre1 - $apellido1 - $telefono1 " 
	echo "$Ci - $nombre - $apellido - $telefono - $grupo"

	
	4)
	echo "Ingrese la ci del alumno que quiere buscar"
	read ci
	cat = ci *poner donde se guarda*


	5)
	echo "Lista de alumnos"
	sort *donde se guardan*

	6)
	echo echo "Ingrese la ci del Tutor"
	read ci
	echo "Ingrese el nombre del Tutor"
	read nombre
	echo "Ingrese el apellido del Tutor"
	read apellido
	echo "Ingrese el telefono del Tutor"
	read telefono
	
esac 




	



	
	
	
	



	


	















r=0
while (r=0)
echo "que accion desea ejecutar"
echo "1-nuevo estudiante"
echo "2-editar estudiante"
echo "3-borrar estudiante"
echo "4-salir"
read X
case X in
1)
echo "ingrese la CI"
read CI
;;
2)
echo "ingrese la CI"
read CI;;
3)
echo "ingrese la CI"
read CI;;
4)
r=1;;
done
done
exit
