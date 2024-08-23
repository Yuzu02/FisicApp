Proceso CalculadoraFisica
    // Variables
    Definir masa, velocidad, fuerza, tiempo, resultado Como Real
    Definir Unidad_Energia, Unidad_Momento, Unidad_Impulso Como Caracter
    Definir opcion Como Entero
	
    // Asignación de las unidades
    Unidad_Energia <- 'J'       // Joules para energía cinética
    Unidad_Momento <- 'kg·m/s' // Kilogramo por metro por segundo para momentum
    Unidad_Impulso <- 'N·s'     // Newton-segundo para impulso
	
    // Seleccionar opción
    Imprimir 'Selecciona lo que deseas calcular:'
    Imprimir '1. Energía cinética (J)'
    Imprimir '2. Momento (kg·m/s)'
    Imprimir '3. Impulso (N·s)'
    Leer opcion
	
    // Cálculos según la opción seleccionada
    Segun opcion Hacer
        1: 
            Imprimir 'Ingrese la masa (kg):'
            Leer masa
            Imprimir 'Ingrese la velocidad (m/s):'
            Leer velocidad
            resultado <- 0.5 * masa * velocidad^2
            Imprimir 'La energía cinética es: ', resultado, ' ', Unidad_Energia
        2:
            Imprimir 'Ingrese la masa (kg):'
            Leer masa
            Imprimir 'Ingrese la velocidad (m/s):'
            Leer velocidad
            resultado <- masa * velocidad
            Imprimir 'El momento es: ', resultado, ' ', Unidad_Momentum
        3:
            Imprimir 'Ingrese la fuerza (N):'
            Leer fuerza
            Imprimir 'Ingrese el tiempo (s):'
            Leer tiempo
            resultado <- fuerza * tiempo
            Imprimir 'El impulso es: ', resultado, ' ', Unidad_Impulso
        De Otro Modo:
            Imprimir 'Opción inválida.'
    FinSegun
FinProceso
