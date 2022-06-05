while read line
do
	if [[ $line == *"hackIT"* ]]
	then
		echo found at line = $line
	fi
done < file.txt

