set terminal png enhanced font "DejaVuSans,12" size 1800,760
set output "priorwork_adp.png"
set datafile separator ","
set style data histograms
set style fill solid 0.9 border -1
set boxwidth 0.75
set ylabel "ADP (um^2 ns)"
set yrange [0:45000]
set grid ytics lc rgb "#d8d8d8"
set key off
set xtics rotate by 0
set title "Local DIV-Only Prior-Work Comparison"
plot "priorwork_adp_data.csv" using 2:xtic(1) with boxes lc rgb "#4e79a7", \
     "" using 0:2:(sprintf("%.0f", $2)) with labels offset 0,1 notitle
