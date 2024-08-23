Proceso Formula_CargaElectrica_PotencialElectrico_CampoElectrico
    // Variables
    Definir CargaElectrica, PotencialElectrico, CampoElectrico Como Real; 
    // Constantes
    Definir Unidad_CargaElectrica, Unidad_PotencialElectrico, Unidad_CampoElectrico Como Caracter; 
	
    // Asignación de unidades
    Unidad_CargaElectrica <- 'C'; // Coulombs
    Unidad_PotencialElectrico <- 'V'; // Voltios
    Unidad_CampoElectrico <- 'N/C'; // Newtons por Coulomb
	
    // Inicialización de fórmulas
    Definir Formula_PotencialElectrico Como Logico; 
    Formula_PotencialElectrico <- Falso;
	
    // Utilidades
    Definir opcion Como Entero;
	
    // Selección de fórmula
    Imprimir '?Qué fórmula desea usar?';
    Imprimir '1. Potencial Eléctrico';
	
    // Leer opción
    Leer opcion;
	
    // Selección de proceso según opción
    Segun opcion Hacer
        1: // Cálculo del Potencial Eléctrico
            Formula_PotencialElectrico <- Verdadero;
            Imprimir 'Ingrese la Carga Eléctrica (en Coulombs):';
            Leer CargaElectrica;
            Imprimir 'Ingrese el Campo Eléctrico (en Newtons por Coulomb):';
            Leer CampoElectrico;
            PotencialElectrico <- CargaElectrica / CampoElectrico;
        De Otro Modo:
            Imprimir 'Opción no válida';
    FinSegun
	
    // Imprimir resultado
    Si Formula_PotencialElectrico Entonces
        Imprimir 'Potencial Eléctrico: ', PotencialElectrico, ' ', Unidad_PotencialElectrico;
    FinSi
FinProceso
