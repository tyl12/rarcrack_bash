
s=$(echo {000..999})
echo $s
for i in $s
do
    echo "Try: $i"
    unrar t -y -p$i test.rar > /dev/null 2>&1
    if [ "$?" == "0" ]; then
        echo "FOUND"
        exit
    fi
done
#unrar t -y -p100 A56KXSXYLZ.rar
