Proceso Formula_Voltaje_Corriente_Resistencia
	// Variables  ( Valores con los cuales interact?a el usuario )
	Definir Voltaje, Corriente, Resistencia Como Real; 
	
	// Constantes ( Unidades en las que se piden las magnitudes )
    Definir Unidad_Voltaje, Unidad_Corriente, Unidad_Resistencia Como Caracter; 
	
	// Asignaci?n de las unidades
	Unidad_Voltaje <- 'v'; // V (Voltios)
	Unidad_Corriente <- 'A'; // A (Amperio)
	Unidad_Resistencia <- 'Ohmio'; // (Ohmio) --> Aqui va el signo , pero Pseint no lo reconoce
	
	// Formulas 
	Definir Formula_Voltaje, Formula_Corriente, Formula_Resistencia Como Logico; 
	
	// Inicializamos las formulas en false
	Formula_Corriente <-  Falso;
	Formula_Resistencia <-  Falso;
	Formula_Voltaje <-  Falso;
	
	// Utilidades
	Definir opcion Como Entero;
	
	// Seleccionar despejes
	Imprimir '?Que formula desea usar?';
	Imprimir '1. Voltaje';
	Imprimir '2. Corriente';
	Imprimir '3. Resistencia';
	
	// Opciones
	Leer opcion;
	
	// Switch
	Segun opcion Hacer
			// Formula Voltaje
		1:
			// Necesario en cada caso 
			Formula_Voltaje <- Verdadero;
			Formula_Corriente <- Falso;
			Formula_Resistencia <- Falso;
			
			// Proceso de solucion
			Imprimir 'Ingrese la Corriente:';
			Leer Corriente;
			Imprimir 'Ingrese la Resistencia:';
			Leer Resistencia;
			
			// Resultado
			Voltaje <- Corriente * Resistencia;
			
			// Formula Corriente
		2:
			// Necesario en cada caso 
			Formula_Voltaje <- Falso;
			Formula_Corriente <- Verdadero;
			Formula_Resistencia <- Falso;
			
			// Proceso de solucion
			Imprimir 'Ingrese el Voltaje:';
			Leer Voltaje;
			Imprimir 'Ingrese la Resistencia:';
			Leer Resistencia;
			
			// Resultado
			Corriente <- Voltaje / Resistencia;
			
			// Formula Resistencia
		3:
			// Necesario en cada caso 
			Formula_Voltaje <- Falso;
			Formula_Corriente <- Falso;
			Formula_Resistencia <- Verdadero;
			
			// Proceso de solucion
			Imprimir 'Ingrese la Corriente:';
			Leer Corriente;
			Imprimir 'Ingrese el Voltaje:';
			Leer Voltaje;
			
			// Resultado
			Resistencia <- Voltaje / Corriente;
			
			// En el caso de que no se seleccione un caso valido
		De Otro Modo:
			Imprimir 'Opcion no v?lida';
	FinSegun
	
	
	// Imprimir resultado con unidades segun sea la formula activa
	Si Formula_Voltaje Entonces
		Imprimir 'Voltaje: ', Voltaje, ' ', Unidad_Voltaje;
	Sino Si Formula_Corriente Entonces
			Imprimir 'Corriente: ', Corriente, ' ', Unidad_Corriente;
		Sino Si Formula_Resistencia Entonces
				Imprimir 'Resistencia: ', Resistencia, ' ', Unidad_Resistencia;
			FinSi
		FinSi
	FinSi
FinProceso
