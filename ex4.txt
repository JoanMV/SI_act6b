NUM=`cat numeros.txt | wc -l` # numero de lineas del archivo numeros.txt

#pares
PARES=0
for I in $(seq 1 $NUM)
do
	valor=`head -n $I numeros.txt | tail -1`
	if [ $(($valor % 2)) -eq 0 ]
	then
		echo $valor
		PARES=$(($PARES+1))
	fi
done
echo "La cuenta de numeros pares es $PARES"

#impares
IMPARES=0
for I in $(seq 1 $NUM)
do
	valor=`head -n $I numeros.txt | tail -1`
	if [ $(($valor % 2)) -ne 0 ]
	then
		echo $valor
		IMPARES=$(($IMPARES+1))
	fi
done
echo "La cuenta de numeros pares es $IMPARES"
