arr='i_am_hiding_stuff.txt'

while IFS= read -r line
do
	if [[ "$line" =~ [[:digit:]]{10} ]]
	then
		echo 'string -'$line
		echo 'line - '$(( i+1 ))
	fi
	i=$((i+1))
done < $arr
