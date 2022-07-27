i=0
str="HACK"
while read line
do
	i=$((i+1))
	if [[ $line == *"$str"* ]];
	then
		echo " The word is present in line no. $i"
		echo " $line"
	fi
done < i_am_hiding_stuff.txt
