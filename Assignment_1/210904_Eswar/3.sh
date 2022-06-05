arr=("a")
a=0
k=-1
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
      substr="ftp://"
      end="8080"
      if [[ ${str:j:6} == *"$substr"* ]];
      then
        k=$j
      elif [[ ${str:j:4} == *"$end"* ]] ;
      then 
       echo $str
       echo "line :-" $i
       echo ${str:k:$j-$k+5}
      fi
      done
done