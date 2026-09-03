set terminal png enhanced size 1800,1400
set output "level_partition_midpoints.png"

set multiplot layout 2,2

unset key
set xrange [1:2]
set yrange [1:2]
set size ratio -1
set border linewidth 1.2
set style line 1 lc rgb "#1f77b4" pt 7 ps 1.25
set grid xtics ytics lt 0 lw 0.7 lc rgb "#c8c8c8"
set format x ""
set format y ""

set title "L0: one global plane"
set xlabel "x mantissa"
set ylabel "y mantissa"
set xtics 1,1,2 scale 0
set ytics 1,1,2 scale 0
set label 1 "k_x=k_y=3/2" at 1.50,1.43 center
plot "< awk 'BEGIN{print 1.5, 1.5}'" using 1:2 with points ls 1
unset label 1

set title "L1: 2 x 2 partitions"
set xlabel "x mantissa"
set ylabel ""
set xtics 1,0.5,2 scale 0
set ytics 1,0.5,2 scale 0
set label 2 "cell midpoints" at 1.50,1.08 center
plot "< awk 'BEGIN{for(i=0;i<2;i++)for(j=0;j<2;j++)print 1+(i+0.5)/2, 1+(j+0.5)/2}'" using 1:2 with points ls 1
unset label 2

set title "L2: 4 x 4 partitions"
set xlabel "x mantissa"
set ylabel "y mantissa"
set xtics 1,0.25,2 scale 0
set ytics 1,0.25,2 scale 0
set label 3 "finer local tangent planes" at 1.50,1.08 center
plot "< awk 'BEGIN{for(i=0;i<4;i++)for(j=0;j<4;j++)print 1+(i+0.5)/4, 1+(j+0.5)/4}'" using 1:2 with points ls 1
unset label 3

set title "L3: 8 x 8 partitions"
set xlabel "x mantissa"
set ylabel ""
set xtics 1,0.125,2 scale 0
set ytics 1,0.125,2 scale 0
set label 4 "K = 17+2i, 17+2j" at 1.50,1.08 center
plot "< awk 'BEGIN{for(i=0;i<8;i++)for(j=0;j<8;j++)print 1+(i+0.5)/8, 1+(j+0.5)/8}'" using 1:2 with points ls 1
unset label 4

unset multiplot
