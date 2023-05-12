#!/usr/bin/env bash

cd chsimpy/

if ! command -v chsimpy-experiment &> /dev/null
then
  chsimpy='python -m chsimpy'
else
  chsimpy='chsimpy'
fi

c0=0.875
for t in 1 60 320 1020; do
  echo "$t min"
  $chsimpy --cinit=$c0 --threshold=$c0 -t $t -z --no-diagrams --png --yaml --export-csv='E2,E,U,SA' --file-id="paper-pic-${t}min-$c0" --no-gui
done
