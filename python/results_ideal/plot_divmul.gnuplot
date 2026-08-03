set terminal png size 1280,900
set grid
set key outside
set output 'results_ideal/accuracy_by_level.png'
set multiplot layout 2,1 title 'OADM software-model relative error by level'
set xlabel 'Approximation level'
set ylabel 'Relative error [%]'
plot 'results_ideal/accuracy_by_level.dat' using 2:($1==0?$3:1/0) with linespoints lw 2 title 'MUL MRED', '' using 2:($1==0?$4:1/0) with linespoints lw 2 title 'MUL relative RMSE', '' using 2:($1==0?$5:1/0) with linespoints lw 2 title 'MUL MaxRE'
plot 'results_ideal/accuracy_by_level.dat' using 2:($1==1?$3:1/0) with linespoints lw 2 title 'DIV MRED', '' using 2:($1==1?$4:1/0) with linespoints lw 2 title 'DIV relative RMSE', '' using 2:($1==1?$5:1/0) with linespoints lw 2 title 'DIV MaxRE'
unset multiplot
set output 'results_ideal/function_sweep.png'
set multiplot layout 2,1 title 'Paper function sweep at y = 1.37500'
set xlabel 'Normalized x mantissa'
set ylabel 'x*y approximation'
plot 'results_ideal/function_sweep.dat' using 1:2 with lines lw 3 title 'exact', for [column=3:6] '' using 1:column with lines title sprintf('level %d', column-3)
set ylabel 'x/y approximation'
plot 'results_ideal/function_sweep.dat' using 1:7 with lines lw 3 title 'exact', for [column=8:11] '' using 1:column with lines title sprintf('level %d', column-8)
unset multiplot
