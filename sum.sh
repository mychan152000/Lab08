echo "Enter Size(N)"
read N

i=1
sum=0
arrVar=()
echo "Enter Numbers"
while [ $i -le $N ]
do
  read num           #get number
  if [ `expr $i % 2` == 0 ]
  then 
    if [[ $num -gt 0 ]]
    then 
        num=$((-num))
    fi
  fi
  arrVar+=($num)
  i=$((i + 1))
done
echo "Result: " "${arrVar[*]}"
