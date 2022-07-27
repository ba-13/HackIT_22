i=0
str="8080"
while read line
do
	i=$((i+1))
	if [[ $line == *"$str"* ]];
	then
		echo "The link is in line no. $i and the link is given below"
		echo " $line"
	fi
done < i_am_hiding_stuff.txt
