// Proceso Calculadora_Magnetica
Proceso Calculadora_Magnetica
	// Variables (Valores con los cuales interact�a el usuario)
	Definir B, A, theta, Fi, v, lambda, resultado Como Real;
	
	// Constantes (Unidades en las que se piden las magnitudes)
	Definir Unidad_Flujo, Unidad_Campo, Unidad_Frecuencia Como Caracter;
	
	// Asignaci�n de las unidades
	Unidad_Flujo <- 'Wb'; // Weber
	Unidad_Campo <- 'T'; // Tesla
	Unidad_Frecuencia <- 'Hz'; // Hertz
	
	// Formulas
	Definir Formula_Flujo, Formula_Campo, Formula_Frecuencia Como L�gico;
	
	// Inicializamos las f�rmulas en falso
	Formula_Flujo <- Falso;
	Formula_Campo <- Falso;
	Formula_Frecuencia <- Falso;
	
	// Utilidades
	Definir opcion Como Entero;
	
	// Seleccionar c�lculos
	Imprimir '�Qu� deseas calcular?';
	Imprimir '1. Flujo magn�tico (Wb)';
	Imprimir '2. Intensidad de campo magn�tico (T)';
	Imprimir '3. Frecuencia (Hz)';
	
	// Opciones
	Leer opcion;
	
	// Switch
	Segun opcion Hacer
		1:
			// Necesario en cada caso
			Formula_Flujo <- Verdadero;
			
			// Proceso de soluci�n
			Imprimir 'Ingrese la intensidad del campo magn�tico (B en T):';
			Leer B;
			Imprimir 'Ingrese el �rea de la superficie (A en m�):';
			Leer A;
			Imprimir 'Ingrese el �ngulo entre B y A (theta en grados):';
			Leer theta;
			
			// Resultado
			resultado <- B * A * Cos(theta * PI / 180);
			
		2:
			// Necesario en cada caso
			Formula_Campo <- Verdadero;
			
			// Proceso de soluci�n
			Imprimir 'Ingrese el flujo magn�tico (Fi en Wb):';
			Leer Fi;
			Imprimir 'Ingrese el �rea de la superficie (A en m�):';
			Leer A;
			Imprimir 'Ingrese el �ngulo entre B y A (theta en grados):';
			Leer theta;
			
			// Resultado
			resultado <- Fi / (A * Cos(theta * PI / 180));
			
		3:
			// Necesario en cada caso
			Formula_Frecuencia <- Verdadero;
			
			// Proceso de soluci�n
			Imprimir 'Ingrese la longitud de onda (lambda en m):';
			Leer lambda;
			Imprimir 'Ingrese la velocidad de la onda (v en m/s):';
			Leer v;
			
			// Resultado
			resultado <- v / lambda;
			
			// En el caso de que no se seleccione un caso v�lido
		De Otro Modo:
			Imprimir 'Opci�n inv�lida.';
	FinSegun
	
	// Imprimir resultado con unidades seg�n sea la f�rmula activa
	Si Formula_Flujo Entonces
		Imprimir 'El flujo magn�tico es: ', resultado, ' ', Unidad_Flujo;
	Sino Si Formula_Campo Entonces
			Imprimir 'La intensidad del campo magn�tico es: ', resultado, ' ', Unidad_Campo;
		Sino Si Formula_Frecuencia Entonces
				Imprimir 'La frecuencia es: ', resultado, ' ', Unidad_Frecuencia;
			Fin si
	Fin si
FinSi
FinProceso