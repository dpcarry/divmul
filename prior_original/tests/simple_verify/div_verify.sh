div=$1
width=$2
rm -rf ./obj_dir
echo "verilating $div in width $width"
verilator --cc -Wno-fatal --trace --top-module top ../../$div/top.v -y ../../common/ -y ../../$div -Gwidth=$width --exe approx_div_verify.cpp --build >/dev/null
if [ $? == 0 ];then
	echo "running..."
	./obj_dir/Vtop
else
	echo "$div failed!"
fi
