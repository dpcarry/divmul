set terminal png enhanced font "Helvetica,12" size 1800,760
set output "sharing_area.png"
set datafile separator ","
set style data histograms
set style histogram cluster gap 1
set style fill solid 0.9 border -1
set boxwidth 0.8
set key top center horizontal
set ylabel "Area (um^2)"
set yrange [0:7000]
set grid ytics lc rgb "#d8d8d8"
set xtics rotate by 0
set title "Mode-Tied Area Sharing Ablation"
plot "../../ppa_results/divmul_sharing_ablation_10ns.csv" every ::1 using 4:xtic(2) title "DIV-only" lc rgb "#4e79a7", \
     "../../ppa_results/divmul_sharing_ablation_10ns.csv" every ::1 using 7 title "MUL-only" lc rgb "#59a14f", \
     "../../ppa_results/divmul_sharing_ablation_10ns.csv" every ::1 using 11 title "Shared DIV+MUL" lc rgb "#e15759"
