for J in $(seq 1 2)
do
	if [ "$J" == "1" ]
	then
		SO="Linux"
	else
		SO="Windows"
	fi
	NUMUSU=0  # contador de usuarios
	valor=0   # procesos por linea
	NUMPROC=0 # acumulador de numero de procesos

	NUMUSU=`grep $SO listado.txt | wc -l`

	#echo $SO
	#echo $NUMUSU

	for I in $(seq 1 $NUMUSU)
	do
		valor=`grep $SO listado.txt | head -n $I | tail -1 | sed 's/\s\+/,/g' | cut -d "," -f 3`
		#echo $valor
		NUMPROC=$(($NUMPROC+$valor))
	done
	echo $SO -\> $NUMUSU $NUMPROC
done
