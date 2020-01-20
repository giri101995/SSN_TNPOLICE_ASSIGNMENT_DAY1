echo "What absolute directory do you want to count?"
read DIR
cd "$DIR" || exit
file=0
dir=0
for d in *;
do
    if [ -d "$d" ]; then
        dir=$((dir+1))
    else
        file=$((file+1))
    fi
done
echo "Files $file"
echo "Directories $dir"
