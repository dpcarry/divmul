divs="INZeD QIAD LEAD QIAD_wide TruncApp"
if [ ! -z $1 ];then
	divs=$1
fi
echo test: $divs
width=52
declare -A shift=( ["INZeD"]=51 ["LEAD"]=104 ["QIAD"]=52 ["QIAD_wide"]=156 ["TruncApp"]=102 ) 
for div in $divs;do
	rm -rf obj_dir
	echo "verilating $div in width $width..."
	if [ $div == "LEAD" ]; then
		tbfile=LEAD_test.cpp
	else
		tbfile=approx_div_test.cpp
	fi
	verilator --cc -Wno-fatal --trace --top-module top ../../$div/top.v -y ../../common/ -y ../../$div -Gwidth=$width --exe $tbfile --build >/dev/null
	if [ $? == 0 ];then
		echo "running $div..."
		./obj_dir/Vtop $width ${shift[$div]} "output/$div.txt"
	else
		echo "$div failed!"
	fi
done