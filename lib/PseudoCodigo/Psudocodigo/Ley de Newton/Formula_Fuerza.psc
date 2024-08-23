Proceso Formula_Fuerza_Masa_Aceleracion
	// Variables (Valores con los cuales interactúa el usuario)
	Definir Masa, Aceleracion, Fuerza Como Real;
	
	// Constantes (Unidades en las que se piden las magnitudes)
	Definir Unidad_Masa, Unidad_Aceleracion, Unidad_Fuerza Como Caracter; 
	
	// Asignación de las unidades
	Unidad_Masa <- 'kg'; // Kilogramos
	Unidad_Aceleracion <- 'm/s²'; // Metros por segundo al cuadrado
	Unidad_Fuerza <- 'N'; // Newton
	
	// Fórmulas 
	Definir Formula_Fuerza, Formula_Masa, Formula_Aceleracion Como Logico; 
	
	// Inicializamos las fórmulas en false
	Formula_Fuerza <- Falso;
	Formula_Masa <- Falso;
	Formula_Aceleracion <- Falso;
	
	// Utilidades
	Definir opcion Como Entero;
	
	// Seleccionar despejes
	Imprimir '¿Qué fórmula desea usar?';
	Imprimir '1. Fuerza';
	Imprimir '2. Masa';
	Imprimir '3. Aceleración';
	
	// Opciones
	Leer opcion;
	
	// Switch
	Segun opcion Hacer
		1:
			// Necesario en cada caso 
			Formula_Fuerza <- Verdadero;
			
			// Proceso de solución
			Imprimir 'Ingrese la Masa (kg):';
			Leer Masa;
			Imprimir 'Ingrese la Aceleración (m/s²):';
			Leer Aceleracion;
			
			// Resultado
			Fuerza <- Masa * Aceleracion;
			
		2:
			// Necesario en cada caso 
			Formula_Masa <- Verdadero;
			
			// Proceso de solución
			Imprimir 'Ingrese la Fuerza (N):';
			Leer Fuerza;
			Imprimir 'Ingrese la Aceleración (m/s²):';
			Leer Aceleracion;
			
			// Resultado
			Masa <- Fuerza / Aceleracion;
			
		3:
			// Necesario en cada caso 
			Formula_Aceleracion <- Verdadero;
			
			// Proceso de solución
			Imprimir 'Ingrese la Fuerza (N):';
			Leer Fuerza;
			Imprimir 'Ingrese la Masa (kg):';
			Leer Masa;
			
			// Resultado
			Aceleracion <- Fuerza / Masa;
			
			// En el caso de que no se seleccione un caso válido
		De Otro Modo:
			Imprimir 'Opción no válida';
	FinSegun
	
	// Imprimir resultado con unidades según sea la fórmula activa
	Si Formula_Fuerza Entonces
		Imprimir 'Fuerza: ', Fuerza, ' ', Unidad_Fuerza;
	Sino Si Formula_Masa Entonces
			Imprimir 'Masa: ', Masa, ' ', Unidad_Masa;
		Sino Si Formula_Aceleracion Entonces
				Imprimir 'Aceleración: ', Aceleracion, ' ', Unidad_Aceleracion;
			FinSi
		FinSi
	FinSi
FinProceso