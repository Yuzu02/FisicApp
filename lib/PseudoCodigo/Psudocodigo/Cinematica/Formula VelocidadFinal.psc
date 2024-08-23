Proceso Formula_VelocidadFinal
    // Variables
    Definir VelocidadFinal, VelocidadInicial, Aceleracion, Tiempo Como Real; 
    // Constantes
    Definir Unidad_Velocidad, Unidad_Aceleracion, Unidad_Tiempo Como Caracter; 
	
    // Asignaci�n de unidades
    Unidad_Velocidad <- 'm/s'; 
    Unidad_Aceleracion <- 'm/s�'; 
    Unidad_Tiempo <- 's'; 
	
    // Inicializaci�n de f�rmulas
    Definir Formula_VelocidadFinal Como Logico; 
    Formula_VelocidadFinal <- Falso;
	
    // Utilidades
    Definir opcion Como Entero;
	
    // Selecci�n de f�rmula
    Imprimir '?Qu� f�rmula desea usar?';
    Imprimir '1. Velocidad Final';
	
    // Leer opci�n
    Leer opcion;
	
    // Selecci�n de proceso seg�n opci�n
    Segun opcion Hacer
        1: // C�lculo de Velocidad Final
            Formula_VelocidadFinal <- Verdadero;
            Imprimir 'Ingrese la Velocidad Inicial:';
            Leer VelocidadInicial;
            Imprimir 'Ingrese la Aceleraci�n:';
            Leer Aceleracion;
            Imprimir 'Ingrese el Tiempo:';
            Leer Tiempo;
            VelocidadFinal <- VelocidadInicial + (Aceleracion * Tiempo);
        De Otro Modo:
            Imprimir 'Opci�n no v�lida';
    FinSegun
	
    // Imprimir resultado
    Si Formula_VelocidadFinal Entonces
        Imprimir 'Velocidad Final: ', VelocidadFinal, ' ', Unidad_Velocidad;
    FinSi
FinProceso
