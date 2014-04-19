#!/bin/bash
gmt4 makecpt -Ccelsius -T-5/5/.1 -Z -I > colors.cpt

gmt4 grdimage -fg s20rts.grd -Ccolors.cpt -R120/280/-55/40 -JX12.8d/7.6d -B20g1000f10/10g10000nSeW -P -E300 -K > plot.ps

#gmt pscoast -R120/280/-55/40 -JX6.4d/3.8d -Dc -W1/1/55/55/55 -P -O -K -A10000 -N1/2/55/55/55 >> plot.ps
gmt4 pscoast -R -JX12.8d/7.6d -Dc -W1/2/255/255/255 -P -O -K -A10000 -N1/1/255/255/255 >> plot.ps

gmt4 psscale -D2.0i/4.75i/3.5i/0.3ih -O -Ccolors.cpt -B2.5 >> plot.ps

gs -sdevice=x11 plot.ps
