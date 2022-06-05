while read line 
do
       if [[ $line == *"1234567890"* ]]
       then
		echo found at line $line
       fi		
done < file.txt	

