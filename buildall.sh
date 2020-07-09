#!/usr/bin/env bash
cd ./Alberts
pdflatex -output-directory=./build -halt-on-error ./Principal.tex 1>/dev/null
if [ $? -ne 0 ]; then
	cat ./build/Principal.log
	echo "Errore nella compilazione di Alberts"
else 
	pdflatex -output-directory=./build -halt-on-error ./Principal.tex 1>/dev/null
	cp ./build/Principal.pdf ../BUILD/Riassunto_Alberts.pdf
	echo "Alberts compilato correttamente"
fi
cd ../Sbobine
pdflatex -output-directory=./build -halt-on-error ./Principal.tex 1>/dev/null
if [ $? -ne 0 ]; then
	cat ./build/Principal.log
	echo "Errore nella compilazione di Sbobine"
else 
	pdflatex -output-directory=./build -halt-on-error ./Principal.tex 1>/dev/null
	cp ./build/Principal.pdf ../BUILD/Sbobine.pdf
	echo "Sbobine compilato correttamente"
fi
cd ../Schema
pdflatex -output-directory=./build -halt-on-error ./Principal.tex 1>/dev/null
if [ $? -ne 0 ]; then
	cat ./build/Principal.log
	echo "Errore nella compilazione di Schema"
else 
	pdflatex -output-directory=./build -halt-on-error ./Principal.tex 1>/dev/null
	cp ./build/Principal.pdf ../BUILD/Schema.pdf
	echo "Schema compilato correttamente"
fi
cd ../Final
pdflatex -output-directory=./build -halt-on-error ./Principal.tex 1>/dev/null
if [ $? -ne 0 ]; then
	cat ./build/Principal.log
	echo "errore nella compilazione di Final"
else 
	pdflatex -output-directory=./build -halt-on-error ./Principal.tex 1>/dev/null
	cp ./build/Principal.pdf ../BUILD/Final.pdf
	echo "Final compilato correttamente"
fi

cd ../




