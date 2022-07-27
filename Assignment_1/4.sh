i=0
str="HACK"
while read line
do 
	i=$((i+1))
	if [[ $line == *"hackIT"* ]];
	then
		echo " line no. is $i and the line is given below:"
		echo $line
	fi
done <i_am_hiding_stuff.txt
