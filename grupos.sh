echo "ingrese el nombre del grupo"
read Gname
cat > "grupo $gname".txt
echo "ingrese el nombre del docente asignado"
read Dname
echo "ingrece cedula del docente"
read DCI
cat "docente: $Dname - $DCI" >> "grupo $gname".txt
cat "alumnos:" >> "grupo $gname".txt
ok = 0
while (ok=0)
echo "ingrese ci de alumno"
read ACI 
echo "ingrese nombre del alumno"
read Aname
cat "$aci - $Aname" >> Atemp.txt
echo "añadir otro?"
echo "1-si"
echo "2-no"
read x
case x in
1);;
2) ox = 1
cat Atemp.txt | sort >> "grupo $gname".txt;;
rm Atemp.txt
sudo chown Admin "grupo $gname".txt
sudo chgrp tutores "grupo $gname".txt
*) echo "accion no contemplada";
done
echo "grupo creado exitosamente"
done