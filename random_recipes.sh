readarray -t recipes < recipes.txt; index=$(($RANDOM % ${#recipes[@]})); echo ${recipes[$index]}
