Proceso Inercia
		// Variables ( Con las que interactua el usuario)
		Definir Masa, Aceleracion, Fuerza Como Real; 
		
		// Constantes ( Unidades de las magntudes ) 
		Definir Unidad_Masa, Unidad_Aceleracion, Unidad_Fuerza Como Caracter; 
		Unidad_Masa <- 'kg';
		Unidad_Aceleracion <- 'm/s�';
		Unidad_Fuerza <- 'N';
		
		// Formulas
		Definir Formula_Fuerza, Formula_Masa, Formula_Aceleracion Como Logico; 
		
		// Iniciacionn de formulas
		Formula_Fuerza <- Falso;
		Formula_Masa <- Falso;
		Formula_Aceleracion <- Falso;

		// Utilidaes
		Definir opcion Como Entero;
		
		// Menu
		Imprimir '�Qu� f�rmula desea usar?';
		Imprimir '1. Fuerza';
		Imprimir '2. Masa';
		Imprimir '3. Aceleraci�n';
		
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Formula_Fuerza <- Verdadero;
				
				Imprimir 'Ingrese la masa:';
				Leer Masa;
				Imprimir 'Ingrese la aceleraci�n:';
				Leer Aceleracion;
				
				Fuerza <- Masa * Aceleracion;
			2:
				Formula_Masa <- Verdadero;
	
				Imprimir 'Ingrese la fuerza:';
				Leer Fuerza;
				Imprimir 'Ingrese la aceleraci�n:';
				Leer Aceleracion;
				
				Masa <- Fuerza / Aceleracion;
				
			3:
				Formula_Aceleracion <- Verdadero;
				
				Imprimir 'Ingrese la fuerza:';
				Leer Fuerza;
				Imprimir 'Ingrese la masa:';
				Leer Masa;
				
				Aceleracion <- Fuerza / Masa;
				
			De Otro Modo:
				Imprimir 'Opci�n no v�lida';
		FinSegun
		
		Si Formula_Fuerza Entonces
			Imprimir 'Fuerza: ', Fuerza, ' ', Unidad_Fuerza;
		Sino Si Formula_Masa Entonces
				Imprimir 'Masa: ', Masa, ' ', Unidad_Masa;
			Sino Si Formula_Aceleracion Entonces
					Imprimir 'Aceleraci�n: ', Aceleracion, ' ', Unidad_Aceleracion;
				FinSi
			fin si
		fin si
		
FinProceso

