NUMLIN=`cat precipitaciones.txt | wc -l`
SUM=`cat precipitaciones.txt | awk '{ print SUM += $2 }' | tail -1`
MEDIA=$(($SUM/$NUMLIN))
echo "La media de las precipitaciones es $SUM/$NUMLIN = $MEDIA"
