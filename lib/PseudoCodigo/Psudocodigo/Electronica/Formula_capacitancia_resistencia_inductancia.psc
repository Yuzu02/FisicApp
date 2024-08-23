// Proceso Calculadora_Electrica
Proceso Calculadora_Electrica
	// Variables (Valores con los cuales interactúa el usuario)
	Definir valor1, valor2, resultado Como Real;
	
	// Constantes (Unidades en las que se piden las magnitudes)
	Definir Unidad_Capacitancia, Unidad_Resistencia, Unidad_Inductancia Como Caracter;
	
	// Asignación de las unidades
	Unidad_Capacitancia <- 'F'; // Faradio
	Unidad_Resistencia <- 'ohmio'; // Ohmio
	Unidad_Inductancia <- 'H'; // Henry
	
	// Formulas
	Definir Formula_Capacitancia, Formula_Resistencia, Formula_Inductancia Como Lógico;
	
	// Inicializamos las fórmulas en falso
	Formula_Capacitancia <- Falso;
	Formula_Resistencia <- Falso;
	Formula_Inductancia <- Falso;
	
	// Utilidades
	Definir opcion Como Entero;
	
	// Seleccionar cálculos
	Imprimir '¿Qué deseas calcular?';
	Imprimir '1. Capacitancia';
	Imprimir '2. Resistencia';
	Imprimir '3. Inductancia';
	
	// Opciones
	Leer opcion;
	
	// Switch
	Segun opcion Hacer
		1:
			// Necesario en cada caso
			Formula_Capacitancia <- Verdadero;
			
			// Proceso de solución
			Imprimir 'Ingrese la carga (C):';
			Leer valor1;
			Imprimir 'Ingrese la diferencia de potencial (V):';
			Leer valor2;
			
			// Resultado
			resultado <- valor1 / valor2;
			
		2:
			// Necesario en cada caso
			Formula_Resistencia <- Verdadero;
			
			// Proceso de solución
			Imprimir 'Ingrese el voltaje (V):';
			Leer valor1;
			Imprimir 'Ingrese la corriente (A):';
			Leer valor2;
			
			// Resultado
			resultado <- valor1 / valor2;
			
		3:
			// Necesario en cada caso
			Formula_Inductancia <- Verdadero;
			
			// Proceso de solución
			Imprimir 'Ingrese la fuerza electromotriz inducida (V):';
			Leer valor1;
			Imprimir 'Ingrese la tasa de cambio de la corriente (A/s):';
			Leer valor2;
			
			// Resultado
			resultado <- valor1 / valor2;
			
			// En el caso de que no se seleccione un caso válido
		De Otro Modo:
			Imprimir 'Opción inválida.';
	FinSegun
	
	// Imprimir resultado con unidades según sea la fórmula activa
	Si Formula_Capacitancia Entonces
		Imprimir 'La capacitancia es: ', resultado, ' ', Unidad_Capacitancia;
	Sino Si Formula_Resistencia Entonces
			Imprimir 'La resistencia es: ', resultado, ' ', Unidad_Resistencia;
		Sino Si Formula_Inductancia Entonces
				Imprimir 'La inductancia es: ', resultado, ' ', Unidad_Inductancia;
			FinSi
		FinSi
	Fin Si
FinProceso