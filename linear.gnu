set title 'Linear Search'
set xrange [10:100]
set yrange [1:100]
set xlabel 'Input size (n)'
set ylabel 'Operation count'
set style data lines

plot 'Count.txt' using 1:2 title 'Best Case', \
     'Count.txt' using 1:3 title 'Average Case', \
     'Count.txt' using 1:4 title 'Worst Case'
