echo "Se simular� borrar los archivos de textos con extensi�n txt"
if [ $# -ne 1 ]; then
	echo "Uso: es necesario introducir 1 par�metros: $0 parametro1 (siendo parametro1 un directorio)"
	exit -1
fi

CUENTA=`ls -A $1/*.txt | wc -l`
echo la orden "rm $1/*.txt" eliminar� los archivos
echo "Se han borrado $CUENTA ficheros"
