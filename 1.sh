while read line 
do 
	if [[ $line == *"HACK"* ]]
	then
		echo "Found at line $line"
	fi
done < file.txt	
