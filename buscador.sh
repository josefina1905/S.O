r=0
while (r=0)
echo "deseas buscar alumnos o docentes"
echo "1-estudiante"
echo "2-docente"
echo "3-salir"
read X
case X in
1)
echo "ingrese la CI"
read CI
cat alumnos.txt | grep $CI;;
2)
echo "ingrese la CI"
read CI
cat docentes.txt | grep $CI;;
3) r=1;
esac
done
exit
