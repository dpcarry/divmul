set terminal png enhanced font "Helvetica,12" size 1800,760
set output "divider_tradeoff.png"
set datafile separator ","
set xlabel "Area (um^2)"
set ylabel "MRED"
set yrange [0:0.05]
set ytics 0.01
set grid xtics ytics lc rgb "#d8d8d8"
set key top right
set title "DIV-Only Accuracy--Area Tradeoff"
set style line 1 lt 1 lw 3 pt 7 ps 1.2
set style line 2 lt 2 lw 3 pt 5 ps 1.2
plot "../../ppa_results/div_only_vs_pace.csv" every ::1 using 6:11 with linespoints title "OADM" ls 1, \
     "../../ppa_results/div_only_vs_pace.csv" every ::1 using 13:18 with linespoints title "PACE" ls 2
