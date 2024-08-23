Proceso Formula_Velocidad_Distancia_Tiempo
	// Variables  ( Valores con los cuales interactua el usario )
	Definir Velocidad, Distancia, Tiempo Como Real; 
	
	// Constantes ( Unidades en las que se piden las magnitudes )
	Definir Unidad_Velocidad, Unidad_Distancia, Unidad_Tiempo Como Caracter; 
	
	// Asignacion de las unidades
	Unidad_Velocidad <- 'm/s'; // Metros sobre segundos
	Unidad_Distancia <- 'm'; // Metros
	Unidad_Tiempo <- 's'; // Segundos
	
	// Formulas 
	Definir Formula_Velocidad, Formula_Distancia, Formula_Tiempo Como Logico; 
	
	// Inicializamos las formulas en false
	Formula_Distancia <-  Falso;
	Formula_Tiempo <-  Falso;
	Formula_Velocidad <-  Falso;
	
	// Utilidades
	Definir opcion Como Entero;
	
	// Seleccionar despejes
	Imprimir '¿Que formula desea usar?';
	Imprimir '1. Velocidad';
	Imprimir '2. Distancia';
	Imprimir '3. Tiempo';
	
	// Opciones
	Leer opcion;
	
	// Switch
	Segun opcion Hacer
		1:
			// Necesario en cada caso 
			Formula_Velocidad <- Verdadero;
			Formula_Distancia <- Falso;
			Formula_Tiempo <- Falso;
			
			// Proceso de solucion
			Imprimir 'Ingrese la distancia:';
			Leer Distancia;
			Imprimir 'Ingrese el tiempo:';
			Leer Tiempo;
			
			// Resultado
			Velocidad <- Distancia / Tiempo;
		2:
			// Necesario en cada caso 
			Formula_Velocidad <- Falso;
			Formula_Distancia <- Verdadero;
			Formula_Tiempo <- Falso;
			
			// Proceso de solucion
			Imprimir 'Ingrese la velocidad:';
			Leer Velocidad;
			Imprimir 'Ingrese el tiempo:';
			Leer Tiempo;
			
			// Resultado
			Distancia <- Velocidad * Tiempo;
		
		3:
			// Necesario en cada caso 
			Formula_Velocidad <- Falso;
			Formula_Distancia <- Falso;
			Formula_Tiempo <- Verdadero;
			
			// Proceso de solucion
			Imprimir 'Ingrese la distancia:';
			Leer Distancia;
			Imprimir 'Ingrese la velocidad:';
			Leer Velocidad;
			
			// Resultado
			Tiempo <- Distancia / Velocidad;
			
		// En el caso de que no se seleccione un caso valido
		De Otro Modo:
			Imprimir 'Opción no válida';
	FinSegun
	
	
	// Imprimir resultado con unidades segun sea la formula activa
	Si Formula_Velocidad Entonces
		Imprimir 'Velocidad: ', Velocidad, ' ', Unidad_Velocidad;
	Sino Si Formula_Distancia Entonces
			Imprimir 'Distancia: ', Distancia, ' ', Unidad_Distancia;
		Sino Si Formula_Tiempo Entonces
				Imprimir 'Tiempo: ', Tiempo, ' ', Unidad_Tiempo;
			FinSi
		FinSi
	FinSi
FinProceso