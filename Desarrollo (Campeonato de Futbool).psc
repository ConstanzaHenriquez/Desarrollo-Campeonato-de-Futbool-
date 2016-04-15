Proceso Campeonato_de_futbool
	
	Escribir "Campeonato de Futbool (Consiste en 10 partidos)"
	Escribir " "

	
	cont<-0;
	Repetir
		cont<-cont+1;
		Escribir "Ingrese goles a favor en el partido ",cont;
		leer goles_favor;
		suma_goles_favor<-suma_goles_favor+goles_favor;
		
		Escribir "Ingrese goles en contra en el partido ",cont;
		leer goles_contra;
		suma_goles_contra<-suma_goles_contra+goles_contra;
		
		si goles_favor>goles_contra entonces
			partidos_ganados<-partidos_ganados+1;
			
			puntos<-puntos+3;
		Sino
			si goles_favor<goles_contra entonces
				partidos_perdidos<-partidos_perdidos+1;
				
			Sino
				si goles_favor=goles_contra Entonces
					empate<-empate+1;
					
					puntos<-puntos+1;
				FinSi
			FinSi
		FinSi
		
	Hasta Que cont=10 
	
	Escribir "Goles a Favor: ",suma_goles_favor;
	Escribir "Goles en Contra: ",suma_goles_contra;
	Escribir " "
	Escribir "Puntos: ",puntos;
		//Puntos
	
	si puntos<10 entonces
		Escribir "Liguilla de Promoción"
	Sino
		si puntos>=10 y puntos<=20 entonces
			Escribir "No liguilla"
		Sino
			si puntos>20 entonces
				Escribir "Liguilla de Campeonato"
			FinSi
		FinSi
	FinSi
	Escribir " "
	Escribir "Partidos Ganados: ",partidos_ganados;
	Escribir "Partidos Empatados: ",empate;
	Escribir "Partidos Perdidos: ",partidos_perdidos;
	Escribir " " 
	//diferencia de goles

	si suma_goles_favor>suma_goles_contra entonces
		
		Escribir "Diferencia de goles: ", suma_goles_favor-suma_goles_contra;
	Sino
		si suma_goles_favor<suma_goles_contra Entonces
			Escribir "Diferencia de goles: ** ", suma_goles_contra-suma_goles_favor;
			Escribir "(**) los goles en contra son mayores. "
		FinSi
	FinSi
FinProceso
