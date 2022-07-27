while read line 
do 
        if[[ $line == *"HACK"* ]] 
        then
                echo "found at line = $line"
        fi
done < file.txt