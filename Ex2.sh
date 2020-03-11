echo -n " Enter 3 numbers: "

read a
arr[0]=$a 

read b
arr[1]=$b

read c
arr[2]=$c

max=$a
for ((i = 0 ; i < 3 ; i++)); do
  if [[ max -lt ${arr[$i]}  ]];then
    max=${arr[$i]} 
  fi  
done

echo "Max number : $max"
exit 0
