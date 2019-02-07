#! /bin/bash
#4. Write a shell script that take one input number from user and print 1 to n number using three loops (For, while, until). (N = entered number)
clear
echo "Enter Number :"
read a 

While(){
	echo "-----------------------------------------------------------------------"
	i=1 ;
	while [ $i -lt $1 ] ; do
		echo "$i"
		i=$(($i + 1 ))
	done
	echo "-----------------------------------------------------------------------"
}

Until(){
	i=1 ;
	until [ $i -gt $1 ] ; do
		echo "$i"
		i=$(($i + 1 ))
	done	 
	
	echo "-----------------------------------------------------------------------"
}
For(){
	for i in ` seq 1 $1 ` ; do
		echo "$i"
	done 
	
	echo "-----------------------------------------------------------------------"
}

echo "[Choose Operation to perform]"
echo "1) While "
echo "2) Until " 
echo "3) For "
echo "[  CTR+C to Stop ]"
echo "-----------------------------------------------------------------------"
while : ; do  
read ops
case $ops in 
	1) echo "Using While Loop:" ; While $a ;;
	2) echo "Using Until:" ; Until $a ;;
	3) echo "Using For Loop:" ; For $a  ;;
	*) echo "This is not a choise" ;; 
esac
done
