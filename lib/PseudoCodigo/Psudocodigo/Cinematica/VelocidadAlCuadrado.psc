Proceso VelocidadAlCuadrado
    // Definir variables
    Definir v0, a, deltaX, v2 Como Real;
    Definir Formula_V2, Formula_V0, Formula_A, Formula_DeltaX Como Logico;
    Definir opcion Como Entero;
	
    // Inicializamos las f�rmulas en falso
    Formula_V2 <- Falso;
    Formula_V0 <- Falso;
    Formula_A <- Falso;
    Formula_DeltaX <- Falso;
	
    // Mostrar men� de opciones
    Imprimir '�Qu� valor desea calcular?';
    Imprimir '1. Velocidad al cuadrado (v^2)';
    Imprimir '2. Velocidad inicial al cuadrado (v0^2)';
    Imprimir '3. Aceleraci�n (a)';
    Imprimir '4. Diferencia de posici�n (?x)';
	
    // Leer opci�n del usuario
    Leer opcion;
	
    // Determinar qu� c�lculo realizar seg�n la opci�n seleccionada
    Segun opcion Hacer
        1:
            // Activar la f�rmula correspondiente
            Formula_V2 <- Verdadero;
			
            // Calcular la velocidad al cuadrado
            Imprimir 'Ingrese la velocidad inicial al cuadrado (v0^2):';
            Leer v0;
            Imprimir 'Ingrese la aceleraci�n (a):';
            Leer a;
            Imprimir 'Ingrese la diferencia de posici�n (?x):';
            Leer deltaX;
			
            v2 <- v0 + 2 * a * deltaX;
			
        2:
            // Activar la f�rmula correspondiente
            Formula_V0 <- Verdadero;
			
            // Calcular la velocidad inicial al cuadrado
            Imprimir 'Ingrese la velocidad al cuadrado (v^2):';
            Leer v2;
            Imprimir 'Ingrese la aceleraci�n (a):';
            Leer a;
            Imprimir 'Ingrese la diferencia de posici�n (?x):';
            Leer deltaX;
			
            v0 <- v2 - 2 * a * deltaX;
			
        3:
            // Activar la f�rmula correspondiente
            Formula_A <- Verdadero;
			
            // Calcular la aceleraci�n
            Imprimir 'Ingrese la velocidad al cuadrado (v^2):';
            Leer v2;
            Imprimir 'Ingrese la velocidad inicial al cuadrado (v0^2):';
            Leer v0;
            Imprimir 'Ingrese la diferencia de posici�n (?x):';
            Leer deltaX;
			
            a <- (v2 - v0) / (2 * deltaX);
			
        4:
            // Activar la f�rmula correspondiente
            Formula_DeltaX <- Verdadero;
			
            // Calcular la diferencia de posici�n (?x)
            Imprimir 'Ingrese la velocidad al cuadrado (v^2):';
            Leer v2;
            Imprimir 'Ingrese la velocidad inicial al cuadrado (v0^2):';
            Leer v0;
            Imprimir 'Ingrese la aceleraci�n (a):';
            Leer a;
			
            deltaX <- (v2 - v0) / (2 * a);
			
        De Otro Modo:
            // Manejar opci�n no v�lida
            Imprimir 'Opci�n no v�lida';
    FinSegun
	
    // Imprimir resultado con unidades seg�n sea la f�rmula activa
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
				Imprimir 'La aceleraci�n es: ', a;
			 Si Formula_DeltaX 
					Entonces
					fin si
					Imprimir 'La diferencia de posici�n (x) es: ', deltaX;
				
			fin proceso
			
   
