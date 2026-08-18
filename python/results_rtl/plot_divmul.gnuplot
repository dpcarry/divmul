set terminal png size 1280,900
set grid
set key outside
set output 'python/results_rtl/accuracy_by_level.png'
set multiplot layout 2,1 title 'OADM software-model relative error by level'
set xlabel 'Approximation level'
set ylabel 'Relative error [%]'
plot 'python/results_rtl/accuracy_by_level.dat' using 2:($1==0?$3:1/0) with linespoints lw 2 title 'MUL MRED', '' using 2:($1==0?$4:1/0) with linespoints lw 2 title 'MUL relative RMSE', '' using 2:($1==0?$5:1/0) with linespoints lw 2 title 'MUL MaxRE'
plot 'python/results_rtl/accuracy_by_level.dat' using 2:($1==1?$3:1/0) with linespoints lw 2 title 'DIV MRED', '' using 2:($1==1?$4:1/0) with linespoints lw 2 title 'DIV relative RMSE', '' using 2:($1==1?$5:1/0) with linespoints lw 2 title 'DIV MaxRE'
unset multiplot
set output 'python/results_rtl/function_sweep.png'
set multiplot layout 2,1 title 'Paper function sweep at y = 1.37500'
set xlabel 'Normalized x mantissa'
set ylabel 'x*y approximation'
plot 'python/results_rtl/function_sweep.dat' using 1:2 with lines lw 3 title 'exact', for [column=3:7] '' using 1:column with lines title sprintf('level %d', column-3)
set ylabel 'x/y approximation'
plot 'python/results_rtl/function_sweep.dat' using 1:8 with lines lw 3 title 'exact', for [column=9:13] '' using 1:column with lines title sprintf('level %d', column-9)
unset multiplot
