#!/bin/bash
# Test the for variable after the loop

for test in Paris London Moscow Leeds Belgrade Sarajevo
do
    echo The next city in Europe is $test
done
echo The last city in Europe we visited was $test
test=Krakow
echo "We're now visiting" $test
