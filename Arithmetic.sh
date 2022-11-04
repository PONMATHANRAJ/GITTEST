 #!/usr/bin/bash
# Script for arithmetic calculator using command line arguments
#check for arguments
#if [ $# -nq 3]
#then 
#	echo "Error: Invaid number of arguments"
#	echo "Usage: ./Arithmetic.sh 1 + 2"
 #       echo "for multiplication use symbol '\*'"
#fi

operator=$2

case ${operator} in
	+) r=`expr $1 $2 $3` #echo `echo "$1 $2 $3" | bc`
	echo $r
	;;
	-) r=`expr $1 $2 $3` #echo `echo "$1 $2 $3" | bc`
	echo $r   ;;
	%) r=`expr $1 $2 $3` #echo `echo "$1 $2 $3" | bc`
	echo $r   ;;
	/) r=`expr $1 $2 $3` #echo `echo "$1 $2 $3" | bc`
	 echo $r  ;;
        *) r=`expr $1 \* $3` #echo `echo "$1 \* $3" | bc`   #$(($1*$3))
	   echo $r
		;;
       *) echo invalid
	   ;;
esac
