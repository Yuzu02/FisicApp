Proceso Formula_Fuerza_Masa_Aceleracion
	// Variables (Valores con los cuales interact�a el usuario)
	Definir Masa, Aceleracion, Fuerza Como Real;
	
	// Constantes (Unidades en las que se piden las magnitudes)
	Definir Unidad_Masa, Unidad_Aceleracion, Unidad_Fuerza Como Caracter; 
	
	// Asignaci�n de las unidades
	Unidad_Masa <- 'kg'; // Kilogramos
	Unidad_Aceleracion <- 'm/s�'; // Metros por segundo al cuadrado
	Unidad_Fuerza <- 'N'; // Newton
	
	// F�rmulas 
	Definir Formula_Fuerza, Formula_Masa, Formula_Aceleracion Como Logico; 
	
	// Inicializamos las f�rmulas en false
	Formula_Fuerza <- Falso;
	Formula_Masa <- Falso;
	Formula_Aceleracion <- Falso;
	
	// Utilidades
	Definir opcion Como Entero;
	
	// Seleccionar despejes
	Imprimir '�Qu� f�rmula desea usar?';
	Imprimir '1. Fuerza';
	Imprimir '2. Masa';
	Imprimir '3. Aceleraci�n';
	
	// Opciones
	Leer opcion;
	
	// Switch
	Segun opcion Hacer
		1:
			// Necesario en cada caso 
			Formula_Fuerza <- Verdadero;
			
			// Proceso de soluci�n
			Imprimir 'Ingrese la Masa (kg):';
			Leer Masa;
			Imprimir 'Ingrese la Aceleraci�n (m/s�):';
			Leer Aceleracion;
			
			// Resultado
			Fuerza <- Masa * Aceleracion;
			
		2:
			// Necesario en cada caso 
			Formula_Masa <- Verdadero;
			
			// Proceso de soluci�n
			Imprimir 'Ingrese la Fuerza (N):';
			Leer Fuerza;
			Imprimir 'Ingrese la Aceleraci�n (m/s�):';
			Leer Aceleracion;
			
			// Resultado
			Masa <- Fuerza / Aceleracion;
			
		3:
			// Necesario en cada caso 
			Formula_Aceleracion <- Verdadero;
			
			// Proceso de soluci�n
			Imprimir 'Ingrese la Fuerza (N):';
			Leer Fuerza;
			Imprimir 'Ingrese la Masa (kg):';
			Leer Masa;
			
			// Resultado
			Aceleracion <- Fuerza / Masa;
			
			// En el caso de que no se seleccione un caso v�lido
		De Otro Modo:
			Imprimir 'Opci�n no v�lida';
	FinSegun
	
	// Imprimir resultado con unidades seg�n sea la f�rmula activa
	Si Formula_Fuerza Entonces
		Imprimir 'Fuerza: ', Fuerza, ' ', Unidad_Fuerza;
	Sino Si Formula_Masa Entonces
			Imprimir 'Masa: ', Masa, ' ', Unidad_Masa;
		Sino Si Formula_Aceleracion Entonces
				Imprimir 'Aceleraci�n: ', Aceleracion, ' ', Unidad_Aceleracion;
			FinSi
		FinSi
	FinSi
FinProceso