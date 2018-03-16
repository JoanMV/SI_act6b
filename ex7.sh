echo "Se simula borrar los archivos de textos con extension txt comprobando el directorio especificado"
if [ $# -ne 1 ]; then
	echo "Uso: es necesario introducir 1 parametros: $0 parametro1 (siendo parametro1 un directorio)"
	exit -1
fi

if [ -d $1 ];
then
	CUENTA=`ls -a $1/*.txt | wc -l`
	echo "o tambien podemos contar con"       find *.txt -type f | wc -l 
	echo "la orden para borrar es "rm $1/*.txt" eliminara los archivos de texto
	echo "Se han borrado $CUENTA ficheros"
else
	echo "No existe el directorio especificado $1"
fi
