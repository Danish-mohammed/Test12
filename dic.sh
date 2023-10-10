declare -A diceResult

#diceResult=(0 0 0 0 0 0)
while ((1))
do
	dice=$((RANDOM%6+1))
	if [[ ${diceResult[$dice]} -eq 1 ]]
    	then
        	break
    	else
		(( diceResult[((dice))]++ ))
    	fi
done

for i in " ${!diceResult[@]}"
do
    echo "$i:${diceResult[$i]}"
done
