Algoritmo Apellido_Nombre_Listas
	
	Definir palabra, palabraLong, palabraReves Como Caracter
	Definir contador, tamañoPal Como Entero
	contador = 1;
	Definir esPalindromo Como Caracter
	Definir  cantPalabras Como Entero
	
	Escribir "Cuantas palabras desea ingresar?"
	Leer cantPalabras
	Dimension palabras[cantPalabras]
	Dimension palabrasReves[cantPalabras]
	
	Para i<-1 Hasta cantPalabras Hacer
		Escribir  "Ingrese la palabra " contador ": "
		Leer palabras[i]
		palabras[i] = Minusculas(palabras[i])
		contador = contador + 1
	FinPara
	
	palabraLong = palabras[1]
	Para i<-1 Hasta  cantPalabras Hacer
		si longitud(palabraLong) < Longitud(palabras[i]) Entonces
			palabraLong = palabras[i]
		FinSi
	FinPara
	
	Escribir "Palabras al derecho y al reves: "
	Para i<-1 Hasta cantPalabras Hacer
		palabra = palabras[i]
		tamañoPal = Longitud(palabra)
		palabraReves = "";
		Mientras tamañoPal > 0 Hacer
			palabraReves = palabraReves + Subcadena(palabra, tamañoPal, tamañoPal)
			tamañoPal = tamañoPal - 1
		FinMientras
		palabrasReves[i] = palabraReves
		Escribir palabras[i] " " palabrasReves[i]
	FinPara
	
	tamañoPal = Longitud(palabraLong)
	
	i<-1
	Mientras i < tamañoPal Y Subcadena(palabraLong, i, i) = Subcadena(palabraLong,tamañoPal, tamañoPal) Hacer
		i<- i+1
		tamañoPal <- tamañoPal - 1
	FinMientras
	
	Si i >= tamañoPal Entonces
		esPalindromo = "Si es Palíndromo"
	SiNo
		esPalindromo = "No es Palíndromo"
	FinSi
	
	tamañoPal = Longitud(palabraLong)
	Dimension Letras[tamañoPal]
	contador = 0
	
	Para i<-1 Hasta tamañoPal Con Paso 1 Hacer
		Letras[i] = Subcadena(palabraLong,i,i)
	FinPara
	
	contadorCaracter = 0
	contadorCaracterRep = 0
	letra = ''
	Para k<-1 Hasta tamañoPal Con Paso 1 Hacer
		Para l<-1 Hasta tamañoPal Con Paso 1 Hacer
			Si Letras[k] == Letras[l] Entonces
				contadorCaracter = contadorCaracter+1
			FinSi
		FinPara
		Si contadorCaracter > contadorCaracterRep Entonces
			contadorCaracterRep = contadorCaracter
			letra = letras[k]
		FinSi
		contadorCaracter = 0
	FinPara
	
	Escribir Sin Saltar  "La palabra Mayor fue: " palabraLong  " - cantidad de " tamañoPal " letras -"
	Escribir " "  esPalindromo
	Escribir "Carácter Popular es " letra " con " contadorCaracterRep " veces"
FinAlgoritmo
