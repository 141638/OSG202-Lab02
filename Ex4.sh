echo -n "Enter 3 numbers: "
read nums

#Split nums into a number array
IFS=' ' read -r -a array <<< "$nums"
leng=${#array[@]} #Length of array

if [[ $leng -lt 3 ]] ;then
    echo "You must input 3 or more numbers to do this operator!"
else {
#Summation of numbers    
  printf "Result 1: "     
  for element in "${array[@]}"
  do
    sum=$((sum+element))
    
    if [[ $element -ne ${array[$((leng-1))]} ]];then
      printf "$element+"
    else
      echo "$element = $sum"
    fi
  done 
#Multiplication of numbers  
  mul=1
  printf "Result 2: " 
  for element in "${array[@]}"
  do
    mul=$((mul*element))
 
    if [[ $element -ne ${array[$((leng-1))]} ]];then
      printf "$element*"
    else
      echo "$element = $mul"  
    fi
  done
}  
fi  
