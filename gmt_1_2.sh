#!/bin/bash
GMT pscoast -R0/360/-90/90 -JG-111/45/4.5i -Bg30 -Dc -A8000 -G10/10/10 -W1/3/255/0/0 -P -K > globe.ps
#GMT pscoast -R0/360/-90/90 -JG-111/45/4.5i -Bg30 -Dc -G10/10/10 -W1/3/10/0/0 -P -K > globe_1.ps

GMT psxy -R -JG -W6/255/0/0 -P -O -Am << END >> globe.ps
-100 40
-100 50
-120 50
-120 40
-100 40
END

gs -sDEVICE=x11 globe.ps
