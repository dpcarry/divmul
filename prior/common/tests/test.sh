if [ "$1" != "" ];then
	list=$1
else
	list=$(ls ../*.v)
fi
echo "testing [$list].."
for filename in $list; do
	file=$(basename $filename .v)
	if [ -e ${file}_test.cpp ];then
		echo "testing $file"
		echo "Cleaning..."
		rm -rf obj_dir
		echo "verilating..."
		verilator --cc -Wno-fatal ../$file.v -y ../ -Gwidth=10 --exe ${file}_test.cpp --build >/dev/null
		if [ $? == 0 ];then
			echo "running..."
			./obj_dir/V${file}
		else
			echo "$file failed!"
		fi
	fi
done