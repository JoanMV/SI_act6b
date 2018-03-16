NUMLIN=`cat precipitaciones.txt | wc -l`
LIN=1
while [ $LIN -le $NUMLIN ]
do	
	PRE=`head -n $LIN precipitaciones.txt | tail -1 | sed 's/\s\+/,/g' | cut -d "," -f 2`
	if [ $PRE -eq 0 ]
	then
		L=$(($LIN%7))
		SEM="Sin precipitaciones"
		if [ $L -eq 1 ]
		then
			echo "Sin lluvia el lunes dia $LIN"
		elif [ $L -eq 2 ]
		then
			echo "Sin lluvia el martes dia $LIN"
		elif [ $L -eq 3 ]
		then
			echo "Sin lluvia el miercoles dia $LIN"
		elif [ $L -eq 4 ]
		then
			echo "Sin lluvia el jueves dia $LIN"
		elif [ $L -eq 5 ]
		then
			echo "Sin lluvia el viernes dia $LIN"
		elif [ $L -eq 6 ]
		then
			echo "Sin lluvia el sabado dia $LIN"
		elif [ $L -eq 0 ]
		then
			echo "Sin lluvia el domingo dia $LIN"
		fi
	fi
	LIN=$(($LIN+1))
done


if [ "$SEM" == "" ]
then
	echo "Todos los dias de la semana con precipitaciones"
fi
