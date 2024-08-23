// Proceso Calculadora_Electrica
Proceso Calculadora_Electrica
    // Variables (Valores con los cuales interact�a el usuario)
    Definir valor1, valor2, resultado Como Real;
    
    // Constantes (Unidades en las que se piden las magnitudes)
    Definir Unidad_Capacitancia, Unidad_Resistencia, Unidad_Inductancia, Unidad_Densidad_Lineal, Unidad_Densidad_Superficial, Unidad_Densidad_Volumetrica Como Caracter;
    
    // Asignaci�n de las unidades
    Unidad_Capacitancia <- 'F'; // Faradio
    Unidad_Resistencia <- 'ohmio'; // Ohmio
    Unidad_Inductancia <- 'H'; // Henry
    Unidad_Densidad_Lineal <- 'C/m'; // Coulomb por metro
    Unidad_Densidad_Superficial <- 'C/m�'; // Coulomb por metro cuadrado
    Unidad_Densidad_Volumetrica <- 'C/m�'; // Coulomb por metro c�bico
    
    // Formulas
    Definir Formula_Capacitancia, Formula_Resistencia, Formula_Inductancia, Formula_Densidad_Lineal, Formula_Densidad_Superficial, Formula_Densidad_Volumetrica Como L�gico;
    
    // Inicializamos las f�rmulas en falso
    Formula_Capacitancia <- Falso;
    Formula_Resistencia <- Falso;
    Formula_Inductancia <- Falso;
    Formula_Densidad_Lineal <- Falso;
    Formula_Densidad_Superficial <- Falso;
    Formula_Densidad_Volumetrica <- Falso;
    
    // Utilidades
    Definir opcion Como Entero;
    
    // Seleccionar c�lculos
    Imprimir '�Qu� deseas calcular?';
    Imprimir '1. Capacitancia';
    Imprimir '2. Resistencia';
    Imprimir '3. Inductancia';
    Imprimir '4. Densidad Lineal de Carga';
    Imprimir '5. Densidad Superficial de Carga';
    Imprimir '6. Densidad Volum�trica de Carga';
    
    // Opciones
    Leer opcion;
    
    // Switch
    Segun opcion Hacer
        1:
            // Necesario en cada caso
            Formula_Capacitancia <- Verdadero;
            
            // Proceso de soluci�n
            Imprimir 'Ingrese la carga (C):';
            Leer valor1;
            Imprimir 'Ingrese la diferencia de potencial (V):';
            Leer valor2;
            
            // Resultado
            resultado <- valor1 / valor2;
            
        2:
            // Necesario en cada caso
            Formula_Resistencia <- Verdadero;
            
            // Proceso de soluci�n
            Imprimir 'Ingrese el voltaje (V):';
            Leer valor1;
            Imprimir 'Ingrese la corriente (A):';
            Leer valor2;
            
            // Resultado
            resultado <- valor1 / valor2;
            
        3:
            // Necesario en cada caso
            Formula_Inductancia <- Verdadero;
            
            // Proceso de soluci�n
            Imprimir 'Ingrese la fuerza electromotriz inducida (V):';
            Leer valor1;
            Imprimir 'Ingrese la tasa de cambio de la corriente (A/s):';
            Leer valor2;
            
            // Resultado
            resultado <- valor1 / valor2;
            
        4:
            // Necesario en cada caso
            Formula_Densidad_Lineal <- Verdadero;
            
            // Proceso de soluci�n
            Imprimir 'Ingrese la carga (C):';
            Leer valor1;
            Imprimir 'Ingrese la longitud (m):';
            Leer valor2;
            
            // Resultado
            resultado <- valor1 / valor2;
            
        5:
            // Necesario en cada caso
            Formula_Densidad_Superficial <- Verdadero;
            
            // Proceso de soluci�n
            Imprimir 'Ingrese la carga (C):';
            Leer valor1;
            Imprimir 'Ingrese el �rea (m�):';
            Leer valor2;
            
            // Resultado
            resultado <- valor1 / valor2;
            
        6:
            // Necesario en cada caso
            Formula_Densidad_Volumetrica <- Verdadero;
            
            // Proceso de soluci�n
            Imprimir 'Ingrese la carga (C):';
            Leer valor1;
            Imprimir 'Ingrese el volumen (m�):';
            Leer valor2;
            
            // Resultado
            resultado <- valor1 / valor2;
            
			// En el caso de que no se seleccione un caso v�lido
        De Otro Modo:
            Imprimir 'Opci�n inv�lida.';
    FinSegun
    
    // Imprimir resultado con unidades seg�n sea la f�rmula activa
    Si Formula_Capacitancia Entonces
        Imprimir 'La capacitancia es: ', resultado, ' ', Unidad_Capacitancia;
    Sino Si Formula_Resistencia Entonces
			Imprimir 'La resistencia es: ', resultado, ' ', Unidad_Resistencia;
		Sino Si Formula_Inductancia Entonces
				Imprimir 'La inductancia es: ', resultado, ' ', Unidad_Inductancia;
			Sino Si Formula_Densidad_Lineal Entonces
					Imprimir 'La densidad lineal de carga es: ', resultado, ' ', Unidad_Densidad_Lineal;
				Sino Si Formula_Densidad_Superficial Entonces
						Imprimir 'La densidad superficial de carga es: ', resultado, ' ', Unidad_Densidad_Superficial;
					Sino Si Formula_Densidad_Volumetrica Entonces
							Imprimir 'La densidad volum�trica de carga es: ', resultado, ' ', Unidad_Densidad_Volumetrica;
    Fin Si
FinProceso