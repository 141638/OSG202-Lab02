#Date
dayofweek=$(date +"%u")
day=$(date +"%d")
month=$(date +"%m")
year=$(date +"%Y")
#Time
hours=$(date +"%H")
minutes=$(date +"%M")
seconds=$(date +"%S")
#FullDate
now=$(date) 

echo "$now"
if [[ $((dayofweek+1)) -lt 8 ]];then
  echo "Hom nay la thu $((dayofweek+1)) ngay $day thang $month nam $year. Bay gio la $hours gio, $minutes phut, $seconds giay."
else
   echo "Hom nay la thu Chu Nhat ngay $day thang $month nam $year. Bay gio la $hours gio, $minutes phut, $seconds giay." 
fi
