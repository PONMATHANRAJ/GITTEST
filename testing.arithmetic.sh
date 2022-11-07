#!/usr/bin/bash
echo " enter test value "
read j
read b
i=0
#operator=$p

while ((++i <= $j));
do

a=$RANDOM
p=$b
c=$RANDOM
out=`./Arithmetic.sh $a  $p $c`
echo result:$out

#ref=`expr $a $p $c`
case ${p} in
        +) ref=`expr $a $p $c` #echo `echo "$a $p $c" | bc`
           ;;
        -) ref=`expr $a $p $c` #echo `echo "$a $p $c" | bc`
           ;;
        %) ref=`expr $a $p $c` #echo `echo "$a $p $c" | bc`
           ;;
        /) ref=`expr $a $p $c` #echo `echo "$a $p $c" | bc`
           ;;
       \\*) ref=`expr $a \* $c` #echo `echo "$a $p $c" | bc`
# x) $(( $1 * $3 ))
           ;;
        *) echo invalid
esac

echo $ref
done
if [ $out == $ref ]
then echo "Test passed"
else echo "Test failed"
fi

