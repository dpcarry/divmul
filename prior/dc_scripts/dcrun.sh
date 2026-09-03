proj_path=$1
lib_path="./algo_verilog/common"
#TODO: root path WARNING, or without "./" prefix
# cleaning
# echo "warning: deleting *.out, *_tb.v"
# #TODO: user confirm
# rm $proj_path/*.out $proj_path/*_tb.v $proj_path/*.vcd
out_path=$proj_path/.DC
log_file="$out_path/dc.log"
dc_shell -f ./dc.tcl -x "set proj_path $proj_path;set lib_path $lib_path" -output_log_file $log_file
#TODO: return value check
#TODO: logfile, netlist, timing check
err_cnt=$(cat "$log_file" |grep -cE "^Error")
echo "err_cnt: $err_cnt"
