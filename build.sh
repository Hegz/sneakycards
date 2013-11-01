#!/bin/bash
xelatex --clean Sneaky_Cards.tex
xelatex --clean Community_Choice.tex
xelatex --clean Sneaky_Cards_Party.tex
xelatex --clean Just_Sneaky.tex
rm *.aux
rm *.log

