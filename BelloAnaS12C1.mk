#makefile.mk

resultados.pdf : resultados.tex plotdatos.py plotdatos1.py
	pdflatex resultados.tex
plot1.pdf : plotdatos1.py datos.dat
	python plotdatos1.py
datos.dat : a.out
	./a.out>> datos.dat
a.out : makedatos.cpp
	g++ makedatos.cpp
plot.pdf : plotdatos.py datos.datos
	python plotdatos.py
datos.dat : a.out
	./a.out>> datos.dat
a.out : makedatos.cpp
	g++ makedatos.cpp



