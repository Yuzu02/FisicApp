Proceso Formula_VelocidadFinal
    // Variables
    Definir VelocidadFinal, VelocidadInicial, Aceleracion, Tiempo Como Real; 
    // Constantes
    Definir Unidad_Velocidad, Unidad_Aceleracion, Unidad_Tiempo Como Caracter; 
	
    // Asignación de unidades
    Unidad_Velocidad <- 'm/s'; 
    Unidad_Aceleracion <- 'm/s²'; 
    Unidad_Tiempo <- 's'; 
	
    // Inicialización de fórmulas
    Definir Formula_VelocidadFinal Como Logico; 
    Formula_VelocidadFinal <- Falso;
	
    // Utilidades
    Definir opcion Como Entero;
	
    // Selección de fórmula
    Imprimir '?Qué fórmula desea usar?';
    Imprimir '1. Velocidad Final';
	
    // Leer opción
    Leer opcion;
	
    // Selección de proceso según opción
    Segun opcion Hacer
        1: // Cálculo de Velocidad Final
            Formula_VelocidadFinal <- Verdadero;
            Imprimir 'Ingrese la Velocidad Inicial:';
            Leer VelocidadInicial;
            Imprimir 'Ingrese la Aceleración:';
            Leer Aceleracion;
            Imprimir 'Ingrese el Tiempo:';
            Leer Tiempo;
            VelocidadFinal <- VelocidadInicial + (Aceleracion * Tiempo);
        De Otro Modo:
            Imprimir 'Opción no válida';
    FinSegun
	
    // Imprimir resultado
    Si Formula_VelocidadFinal Entonces
        Imprimir 'Velocidad Final: ', VelocidadFinal, ' ', Unidad_Velocidad;
    FinSi
FinProceso
