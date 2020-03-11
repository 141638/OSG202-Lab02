con="y"
while test $con = "y";do {
  echo -n "Enter file name: "
  read name

  if test -f "${name}"; then { 
    echo "$name is an ordinary file"
    echo "File content: "
    cat $name
    echo ""
  }

  elif test -d "$name"; then {
    
    echo "$name is a directory"
    echo "- List subdir and files in $name: "
    ls  $name
    
    #Get all directories of foders as String form
    folders=$(printf "%s " $(ls -d $name/*))
    
    #Split all dirctories into an array
    IFS=' ' read -r -a array <<< "$folders"
    
    #Use loop to check all empty folders
    count=0
    for element in "${array[@]}"
    do {
        if find -- "$element" -prune -type d -empty | grep -q .; then {
          count=$((count+1))
          if [ $count -eq 1 ]; then
            echo "- Empty folders are: "
          fi  
          printf '%s\n' "$element"
        }  
        fi
    } 
    done
    if [[ $count -eq 0 ]]; then 
      echo "- There is no empty folder" 
    fi  
 }

  else                                   
    echo "[$name] not found"
  fi

  echo -n "Continue(y/n)"
  read con 
}
done
exit 0

