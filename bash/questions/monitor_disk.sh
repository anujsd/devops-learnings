us1=$(df / | awk 'NR==2 { print $5+0 }')

us2=$(df / | awk 'NR==2 { print $5 }' | sed 's/%//')

echo $us1
echo $us2

if [ $us2 -gt 10 ]; then
    echo "Usage greater than 10"
else
    echo "Usage less than 10"
fi