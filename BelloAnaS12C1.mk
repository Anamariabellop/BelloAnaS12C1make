#makefile.mk

resultados.pdf : resultados.tex plotdatos.py plotdatos1.py
	pdflatex resultados.tex
plot1.pdf : plotdatos1.py datos.dat
	python plotdatos1.py
datos.dat : a.out
	./a.out>> datos.dat
a.out : makedatos1.cpp
	g++ makedatos1.cpp
plot.pdf : plotdatos.py datos.dat
	python plotdatos.py
datos.dat : a.out
	./a.out>> datos.dat
a.out : makedatos.py
	python makedatos.py



#Comentario: No estoy segura si para el plot .pdf cambia porque los datos los proporciona un .py. 
#En ese caso no sabría si es con a.out.