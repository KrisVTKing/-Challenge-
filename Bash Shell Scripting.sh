yourName="Kristiyan"
max_number=$(ls -v "${yourName}"* | tail -n1 | sed "s/${yourName}//")
for ((i = max_number +  1; i <= max_number + 25; i++)); do
    touch "${yourName}$i"
done
echo "Created 25 files starting from ${yourName}$((max_number + 1))."