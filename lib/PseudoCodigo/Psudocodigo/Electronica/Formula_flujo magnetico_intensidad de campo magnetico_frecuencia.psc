// Proceso Calculadora_Magnetica
Proceso Calculadora_Magnetica
	// Variables (Valores con los cuales interactúa el usuario)
	Definir B, A, theta, Fi, v, lambda, resultado Como Real;
	
	// Constantes (Unidades en las que se piden las magnitudes)
	Definir Unidad_Flujo, Unidad_Campo, Unidad_Frecuencia Como Caracter;
	
	// Asignación de las unidades
	Unidad_Flujo <- 'Wb'; // Weber
	Unidad_Campo <- 'T'; // Tesla
	Unidad_Frecuencia <- 'Hz'; // Hertz
	
	// Formulas
	Definir Formula_Flujo, Formula_Campo, Formula_Frecuencia Como Lógico;
	
	// Inicializamos las fórmulas en falso
	Formula_Flujo <- Falso;
	Formula_Campo <- Falso;
	Formula_Frecuencia <- Falso;
	
	// Utilidades
	Definir opcion Como Entero;
	
	// Seleccionar cálculos
	Imprimir '¿Qué deseas calcular?';
	Imprimir '1. Flujo magnético (Wb)';
	Imprimir '2. Intensidad de campo magnético (T)';
	Imprimir '3. Frecuencia (Hz)';
	
	// Opciones
	Leer opcion;
	
	// Switch
	Segun opcion Hacer
		1:
			// Necesario en cada caso
			Formula_Flujo <- Verdadero;
			
			// Proceso de solución
			Imprimir 'Ingrese la intensidad del campo magnético (B en T):';
			Leer B;
			Imprimir 'Ingrese el área de la superficie (A en m²):';
			Leer A;
			Imprimir 'Ingrese el ángulo entre B y A (theta en grados):';
			Leer theta;
			
			// Resultado
			resultado <- B * A * Cos(theta * PI / 180);
			
		2:
			// Necesario en cada caso
			Formula_Campo <- Verdadero;
			
			// Proceso de solución
			Imprimir 'Ingrese el flujo magnético (Fi en Wb):';
			Leer Fi;
			Imprimir 'Ingrese el área de la superficie (A en m²):';
			Leer A;
			Imprimir 'Ingrese el ángulo entre B y A (theta en grados):';
			Leer theta;
			
			// Resultado
			resultado <- Fi / (A * Cos(theta * PI / 180));
			
		3:
			// Necesario en cada caso
			Formula_Frecuencia <- Verdadero;
			
			// Proceso de solución
			Imprimir 'Ingrese la longitud de onda (lambda en m):';
			Leer lambda;
			Imprimir 'Ingrese la velocidad de la onda (v en m/s):';
			Leer v;
			
			// Resultado
			resultado <- v / lambda;
			
			// En el caso de que no se seleccione un caso válido
		De Otro Modo:
			Imprimir 'Opción inválida.';
	FinSegun
	
	// Imprimir resultado con unidades según sea la fórmula activa
	Si Formula_Flujo Entonces
		Imprimir 'El flujo magnético es: ', resultado, ' ', Unidad_Flujo;
	Sino Si Formula_Campo Entonces
			Imprimir 'La intensidad del campo magnético es: ', resultado, ' ', Unidad_Campo;
		Sino Si Formula_Frecuencia Entonces
				Imprimir 'La frecuencia es: ', resultado, ' ', Unidad_Frecuencia;
			Fin si
	Fin si
FinSi
FinProceso