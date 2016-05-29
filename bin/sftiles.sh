#!/bin/bash

for (( i = 0 ; i <= 9; i++ ))
do
    wget http://web.archive.org/web/20130723184255/http://www.squidfingers.com/files/patterns/pattern_00$i.gif
done
for (( i = 10 ; i <= 99; i++ ))
do
    wget http://web.archive.org/web/20130723184255/http://www.squidfingers.com/files/patterns/pattern_0$i.gif
done
for (( i = 100 ; i <= 158; i++ ))
do
    wget http://web.archive.org/web/20130723184255/http://www.squidfingers.com/files/patterns/pattern_$i.gif
done
