arr=("a")
a=0
 while read line
do
    arr+=("$line")
    a=$((a+1))   
done < ../i_am_hiding_stuff.txt 
for (( i=1; i<=$a; i++ ))
do
    str=${arr[i]}
    for ((j=0; j<${#str}; j++))
      do 
      substr="HACK"
      if [[ ${str:j:4} == *"$substr"* ]];
      then
        echo $str
        echo "Line:-"$i
        echo ${str:j:4}
      fi
      done
done
