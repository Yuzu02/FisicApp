Proceso VelocidadAlCuadrado
    // Definir variables
    Definir v0, a, deltaX, v2 Como Real;
    Definir Formula_V2, Formula_V0, Formula_A, Formula_DeltaX Como Logico;
    Definir opcion Como Entero;
	
    // Inicializamos las fórmulas en falso
    Formula_V2 <- Falso;
    Formula_V0 <- Falso;
    Formula_A <- Falso;
    Formula_DeltaX <- Falso;
	
    // Mostrar menú de opciones
    Imprimir '¿Qué valor desea calcular?';
    Imprimir '1. Velocidad al cuadrado (v^2)';
    Imprimir '2. Velocidad inicial al cuadrado (v0^2)';
    Imprimir '3. Aceleración (a)';
    Imprimir '4. Diferencia de posición (?x)';
	
    // Leer opción del usuario
    Leer opcion;
	
    // Determinar qué cálculo realizar según la opción seleccionada
    Segun opcion Hacer
        1:
            // Activar la fórmula correspondiente
            Formula_V2 <- Verdadero;
			
            // Calcular la velocidad al cuadrado
            Imprimir 'Ingrese la velocidad inicial al cuadrado (v0^2):';
            Leer v0;
            Imprimir 'Ingrese la aceleración (a):';
            Leer a;
            Imprimir 'Ingrese la diferencia de posición (?x):';
            Leer deltaX;
			
            v2 <- v0 + 2 * a * deltaX;
			
        2:
            // Activar la fórmula correspondiente
            Formula_V0 <- Verdadero;
			
            // Calcular la velocidad inicial al cuadrado
            Imprimir 'Ingrese la velocidad al cuadrado (v^2):';
            Leer v2;
            Imprimir 'Ingrese la aceleración (a):';
            Leer a;
            Imprimir 'Ingrese la diferencia de posición (?x):';
            Leer deltaX;
			
            v0 <- v2 - 2 * a * deltaX;
			
        3:
            // Activar la fórmula correspondiente
            Formula_A <- Verdadero;
			
            // Calcular la aceleración
            Imprimir 'Ingrese la velocidad al cuadrado (v^2):';
            Leer v2;
            Imprimir 'Ingrese la velocidad inicial al cuadrado (v0^2):';
            Leer v0;
            Imprimir 'Ingrese la diferencia de posición (?x):';
            Leer deltaX;
			
            a <- (v2 - v0) / (2 * deltaX);
			
        4:
            // Activar la fórmula correspondiente
            Formula_DeltaX <- Verdadero;
			
            // Calcular la diferencia de posición (?x)
            Imprimir 'Ingrese la velocidad al cuadrado (v^2):';
            Leer v2;
            Imprimir 'Ingrese la velocidad inicial al cuadrado (v0^2):';
            Leer v0;
            Imprimir 'Ingrese la aceleración (a):';
            Leer a;
			
            deltaX <- (v2 - v0) / (2 * a);
			
        De Otro Modo:
            // Manejar opción no válida
            Imprimir 'Opción no válida';
    FinSegun
	
    // Imprimir resultado con unidades según sea la fórmula activa
	Si Formula_V2 
		Entonces
		FinSi
        Imprimir 'La velocidad al cuadrado es: ', v2;
     Si Formula_V0
			Entonces
			fin si
			
			Imprimir 'La velocidad inicial al cuadrado es: ', v0;
		 Si Formula_A 
				Entonces
				fin si
				Imprimir 'La aceleración es: ', a;
			 Si Formula_DeltaX 
					Entonces
					fin si
					Imprimir 'La diferencia de posición (x) es: ', deltaX;
				
			fin proceso
			
   
