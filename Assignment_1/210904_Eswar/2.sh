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
      z="0000000000"
      n="9999999999"
      k=0
      for ((l=0; l<10; l++))
      do if [[ ${str:j+l:1} > $z ]] && [[ ${str:j+l:1} < $n ]];
        then 
         k=$((k+1))
        fi
      done
      if [ "$k" -gt 8 ] ;
      then
       echo $str
       echo "line:- "$i 
       echo ${str:j:10}
      fi
    done
done