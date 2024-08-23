Proceso CalculadoraOndas
    // Variables (Valores con los cuales interactúa el usuario)
    Definir frecuencia, velocidad, amplitud, resultado Como Real;
	
    // Constantes (Unidades en las que se piden las magnitudes)
    Definir Unidad_Tiempo, Unidad_Longitud Como Caracter; 
	
    // Asignación de las unidades
    Unidad_Tiempo <- 's'; // Segundos
    Unidad_Longitud <- 'm'; // Metros
	
    // Utilidades
    Definir opcion Como Entero;
	
    // Seleccionar cálculo
    Imprimir 'Selecciona lo que deseas calcular:';
    Imprimir '1. Periodo (s)';
    Imprimir '2. Longitud de onda (m)';
    Imprimir '3. Amplitud';
    Leer opcion;
	
    // Switch
    Segun opcion Hacer
        1:
            // Proceso de solución
            Imprimir 'Ingrese la frecuencia (Hz):';
            Leer frecuencia;
			
            // Resultado
            resultado <- 1 / frecuencia;
            Imprimir 'El periodo es: ', resultado, ' ', Unidad_Tiempo;
			
            // Opcional: Cálculo de longitud de onda si se desea
            Imprimir '¿Deseas calcular la longitud de onda? (s/n):';
            Leer respuesta;
            Si respuesta = 's' Entonces
                Imprimir 'Ingrese la velocidad de propagación (m/s):';
                Leer velocidad;
                resultado <- velocidad / frecuencia;
                Imprimir 'La longitud de onda es: ', resultado, ' ', Unidad_Longitud;
            FinSi
			
        2:
            // Proceso de solución
            Imprimir 'Ingrese la velocidad de propagación (m/s):';
            Leer velocidad;
            Imprimir 'Ingrese la frecuencia (Hz):';
            Leer frecuencia;
			
            // Resultado
            resultado <- velocidad / frecuencia;
            Imprimir 'La longitud de onda es: ', resultado, ' ', Unidad_Longitud;
			
            // Opcional: Cálculo de amplitud si se desea
            Imprimir '¿Deseas calcular la amplitud? (s/n):';
            Leer respuesta;
            Si respuesta = 's' Entonces
                Imprimir 'Ingrese la amplitud de la onda:';
                Leer amplitud;
                Imprimir 'La amplitud de la onda es: ', amplitud;
            FinSi
			
        3:
            // Proceso de solución
            Imprimir 'Ingrese la amplitud de la onda:';
            Leer amplitud;
            Imprimir 'La amplitud de la onda es: ', amplitud;
			
            // Opcional: Cálculo de longitud de onda si se desea
            Imprimir '¿Deseas calcular la longitud de onda? (s/n):';
            Leer respuesta;
            Si respuesta = 's' Entonces
                Imprimir 'Ingrese la velocidad de propagación (m/s):';
                Leer velocidad;
                Imprimir 'Ingrese la frecuencia (Hz):';
                Leer frecuencia;
                resultado <- velocidad / frecuencia;
                Imprimir 'La longitud de onda es: ', resultado, ' ', Unidad_Longitud;
            FinSi
			
        De Otro Modo:
            Imprimir 'Opción no válida';
    FinSegun
FinProceso
