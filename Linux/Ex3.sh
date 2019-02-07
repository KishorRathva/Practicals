#! /bin/bash
#3. Write a shell script that take two input numbers from user at runtime and display arithmetic operation on that numbers, find out max, & min number from them, find weather that numbers negative or positive.
clear
echo "First Number :"
read a
echo "Second Number :"
read b

MinMax(){
	echo "-----------------------------------------------------------------------"
	if [ $a -gt $b ] ; then
	echo "$a is Maximum"
	echo "$b is Minimum"
	else 
	echo "$b is Maximum"
	echo "$a is Minimum"
	fi
	echo "-----------------------------------------------------------------------"
}

NegativePositive(){
	if [ $a -gt 0 ] ; then
		echo "$a is Positive"
	else
		echo "$a is Negative"
	fi
	if [ $b -gt 0 ] ; then
		echo "$b is Positive"
	else
		echo "$b is Negative"
	fi 
	
	echo "-----------------------------------------------------------------------"
}

MinMax 
NegativePositive

echo "[Choose Operation to perform]"
echo "1) Addition"
echo "2) Substraction" 
echo "3) Division"
echo "4) Multiplication"
echo "[  CTR+C to Stop ]"
echo "-----------------------------------------------------------------------"
while : ; do  
read ops
case $ops in 
	1) echo "Addition" :  $((a+b)) ;;
	2) echo "Substraction" : $((a-b)) ;;
	3) echo "Division" : $((a/b)) ;;
	4) echo "Multiplication" : $((a*b)) ;;
	*) echo "This is not a choise" ;; 
esac
done
