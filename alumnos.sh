r=0
while (r=0)
echo "que accion desea ejecutar"
echo "1-nuevo estudiante"
echo "2-borrar estudiante"
echo "3-salir"
read X
case X in
1)
echo "ingrese la CI"
read CI
;;
2)
echo "ingrese la CI"
read CI
cat docentes.txt | grep $CI;;
3) r=1;
done
done
exit