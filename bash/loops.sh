# cat input.txt | while read line
# do
#     echo $line
# done

# while read line; do
#     echo $line
# done < input.txt

# while read line
# do 
#     echo $line
# done < input.txt

i=0

# while [ $i -le 10 ] ; do
#     echo "$i"
#     # (( i += 1 ))
#     # $i += 1
#     (( i+=1 ))
# done

for i in {1..5}
do
    echo "$i"
done