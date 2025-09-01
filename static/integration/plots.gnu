set samples 1000
set xrange [0:3.5]
set yrange [0:10]
f(x) = x**2

set linetype 1 lc rgb '#9762bd'

set style fill transparent solid 0.35 noborder
filter(x,min,max) = (x >= min && x <= max) ? x : 1/0
plot '+' using (filter($1, 1, 3)):(f($1)) with filledcurves x1 lt 1 notitle,\
     ''  using 1:(f($1)) with lines lw 3 lt 1 notitle
