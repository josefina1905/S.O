rep=1
while [ $rep = 1 ]
echo "seleccione una de las siguientes opciones"
echo "1-nuevo alumno"
echo "2-editar alumno"
echo "3-buscar alumno"
echo "4-borrar alumno"
echo "x-volver"
read x
case $x in
1)
echo "Ingrese la Ci del alumno"
	read Ci
	echo "Ingrese el nombre"
	read nombre
	echo "Ingrese el apellido"
	read apellido
	echo "Ingrese el telefono"
	read telefono 
	echo "Ingrese el nombre del grupo que pertenece"
	read grupo
	
	echo "$Ci - $nombre - $apellido" >>  /gupos/"$grupo".txt
	echo "$Ci - $nombre - $apellido - $telefono" >> alumnos.txt;;
2)
echo "Ingrese la Ci del alumno"
	read Ci
	echo "a continuacion ingrese los nuevos datos"
	echo "nombre:"
	read nombre
	echo "apellido:"
	read apellido
	echo "telefono:"
	read telefono 
	echo "grupo:"
	read grupo
	
	Nlinea = grep "$Ci" /grupos/*
	sed '$nlinea s/*/$Ci - $nombre - $apellido - $telefono/' /gupos/"$grupo".txt
	sed '$nlinea s/*/$Ci - $nombre - $apellido - $telefono/' alumnos.txt
esac
do 
done
exit
