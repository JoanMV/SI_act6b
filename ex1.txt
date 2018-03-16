NUMLIN=`cat nombres.txt | wc -l`
LIN=1
while [ $LIN -le $NUMLIN ]
do
	USU=`head -n $LIN nombres.txt | tail -1`
	echo $USU
	mkdir -p "pru/$USU"
	for J in $(seq 1 $1)
	do
		mkdir -p "pru/$USU/personal$J"
	done
	echo $LIN
	LIN=$(($LIN+1))
done
