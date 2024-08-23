Proceso Formula_CargaElectrica_PotencialElectrico_CampoElectrico
    // Variables
    Definir CargaElectrica, PotencialElectrico, CampoElectrico Como Real; 
    // Constantes
    Definir Unidad_CargaElectrica, Unidad_PotencialElectrico, Unidad_CampoElectrico Como Caracter; 
	
    // Asignaci�n de unidades
    Unidad_CargaElectrica <- 'C'; // Coulombs
    Unidad_PotencialElectrico <- 'V'; // Voltios
    Unidad_CampoElectrico <- 'N/C'; // Newtons por Coulomb
	
    // Inicializaci�n de f�rmulas
    Definir Formula_PotencialElectrico Como Logico; 
    Formula_PotencialElectrico <- Falso;
	
    // Utilidades
    Definir opcion Como Entero;
	
    // Selecci�n de f�rmula
    Imprimir '?Qu� f�rmula desea usar?';
    Imprimir '1. Potencial El�ctrico';
	
    // Leer opci�n
    Leer opcion;
	
    // Selecci�n de proceso seg�n opci�n
    Segun opcion Hacer
        1: // C�lculo del Potencial El�ctrico
            Formula_PotencialElectrico <- Verdadero;
            Imprimir 'Ingrese la Carga El�ctrica (en Coulombs):';
            Leer CargaElectrica;
            Imprimir 'Ingrese el Campo El�ctrico (en Newtons por Coulomb):';
            Leer CampoElectrico;
            PotencialElectrico <- CargaElectrica / CampoElectrico;
        De Otro Modo:
            Imprimir 'Opci�n no v�lida';
    FinSegun
	
    // Imprimir resultado
    Si Formula_PotencialElectrico Entonces
        Imprimir 'Potencial El�ctrico: ', PotencialElectrico, ' ', Unidad_PotencialElectrico;
    FinSi
FinProceso
