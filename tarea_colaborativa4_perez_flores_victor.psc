Algoritmo Romanos // arregla el fallooo//
	Escribir "ingrese un n�mero entre 1 y 1000"
	Leer N�mero 
	SePuedeConvertir<-Verdadero 
	si n�mero=0 entonces 
		Escribir " no existe ning�n s�mbolo para representar el 0 "
		SePuedeConvertir<-Falso 
	FinSi
	Si n�mero<>trunc(n�mero) Entonces
		Escribir "el n�mero debe ser entero"
		SePuedeConvertir<-Falso 
	Fin Si
	Si N�mero>1000 Entonces
		Escribir "Muy Alto"
		SePuedeConvertir<-Falso
	Fin Si
	 si N�mero < 0 Entonces 
		Escribir "debe ser positivo"
	     SePuedeConvertir<- Falso 
	 finsi
	 // realizar la conversi�n
	 si SePuedeConvertir Entonces
		 //He a�adido un 0 ya que es mil y no 100
		 si N�mero= 1000 Entonces
			 Escribir "M"
		 sino 
			 Dimension  nu[10], nd[10], nc[10] // notaci�n para unidades, decenas y centenas 
			 nu[1]<- ' '; nu[2]<- 'I'; nu[3]<- 'II'; nu[4]<- 'III'; nu[5]<- 'IV'; nu[6]<- 'V'; nu[7]<- 'VI'; nu[8]<- 'VII'; nu[9]<- 'VIII'; nu[10]<- 'IX'
			 nd[1]<- ' '; nd[2]<- 'X'; nd[3]<- 'XX'; nd[4]<- 'XXX'; nd[5]<- 'XL'; nd[6]<- 'L'; nd[7]<- 'LX'; nd[8]<- 'LXX'; nd[9]<- 'LXXX'; nd[10]<- 'XC'
			 nc[1]<- ' '; nc[2]<- 'C'; nc[3]<- 'CC'; nc[4]<- 'CCC'; nc[5]<- 'CD'; nc[6]<- 'D'; nc[7]<- 'DC'; nc[8]<- 'DCC'; nc[9]<- 'DCCC'; nc[10]<- 'CM'
			 centenas<-trunc(n�mero/100) mod 10
			 //He quitado un 0 en las decenas que ten�a de sobra
			 decenas<-trunc(n�mero/10) mod 10
			 unidades<-n�mero mod 10
			 //Las unidades las he puesto positivas, ya que en negativo no funcionar�
			 Escribir nc[centenas+1], nd[decenas+1], nu[unidades+1]
		 FinSi
	 FinSi
	 
	 
FinAlgoritmo
