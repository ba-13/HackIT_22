while read line
do
	if [[ $line == *"ftp"* ]]
	then
		echo found at line = $line
	fi
done < file.txt

