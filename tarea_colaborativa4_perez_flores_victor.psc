Algoritmo Romanos // arregla el fallooo//
	Escribir "ingrese un número entre 1 y 1000"
	Leer Número 
	SePuedeConvertir<-Verdadero 
	si número=0 entonces 
		Escribir " no existe ningún símbolo para representar el 0 "
		SePuedeConvertir<-Falso 
	FinSi
	Si número<>trunc(número) Entonces
		Escribir "el número debe ser entero"
		SePuedeConvertir<-Falso 
	Fin Si
	Si Número>1000 Entonces
		Escribir "Muy Alto"
		SePuedeConvertir<-Falso
	Fin Si
	 si Número < 0 Entonces 
		Escribir "debe ser positivo"
	     SePuedeConvertir<- Falso 
	 finsi
	 // realizar la conversión
	 si SePuedeConvertir Entonces
		 si Número= 100 Entonces
			 Escribir "M"
		 sino 
			 Dimension  nu[10], nd[10], nc[10] // notación para unidades, decenas y centenas 
			 nu[1]<- ' '; nu[2]<- 'I'; nu[3]<- 'II'; nu[4]<- 'III'; nu[5]<- 'IV'; nu[6]<- 'V'; nu[7]<- 'VI'; nu[8]<- 'VII'; nu[9]<- 'VIII'; nu[10]<- 'IX'
			 nd[1]<- ' '; nd[2]<- 'X'; nd[3]<- 'XX'; nd[4]<- 'XXX'; nd[5]<- 'XL'; nd[6]<- 'L'; nd[7]<- 'LX'; nd[8]<- 'LXX'; nd[9]<- 'LXXX'; nd[10]<- 'XC'
			 nc[1]<- ' '; nc[2]<- 'C'; nc[3]<- 'CC'; nc[4]<- 'CCC'; nc[5]<- 'CD'; nc[6]<- 'D'; nc[7]<- 'DC'; nc[8]<- 'DCC'; nc[9]<- 'DCCC'; nc[10]<- 'CM'
			 centenas<-trunc(número/100) mod 10
			 decenas<-trunc(número/100) mod 10
			 unidades<-número mod 10
			 Escribir nc[centenas+1], nd[decenas+1], nu[unidades-1]
		 FinSi
	 FinSi
	 
	 
FinAlgoritmo
