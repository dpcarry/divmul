div=LEAD
width=$1
rm -rf ./obj_dir
echo "verilating $div in width $width"
verilator --cc -Wno-fatal --trace --timing --top-module top ../../$div/top.v -y ../../common/ -y ../../$div -Gwidth=$width --exe LEAD_verify.cpp --build >/dev/null
if [ $? == 0 ];then
	echo "running..."
	./obj_dir/Vtop
else
	echo "$div failed!"
fi
