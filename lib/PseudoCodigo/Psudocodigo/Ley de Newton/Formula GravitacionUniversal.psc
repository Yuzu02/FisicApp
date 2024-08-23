// Proceso Calculadora_Electrica
Proceso Calculadora_Electrica
    // Variables (Valores con los cuales interactúa el usuario)
    Definir valor1, valor2, valor3, resultado Como Real;
    
    // Constantes (Unidades en las que se piden las magnitudes)
    Definir Unidad_Capacitancia, Unidad_Resistencia, Unidad_Inductancia, Unidad_Densidad_Lineal, Unidad_Densidad_Superficial, Unidad_Densidad_Volumetrica, Unidad_Gravitacion Como Caracter;
    
    // Asignación de las unidades
    Unidad_Capacitancia <- 'F'; // Faradio
    Unidad_Resistencia <- 'ohmio'; // Ohmio
    Unidad_Inductancia <- 'H'; // Henry
    Unidad_Densidad_Lineal <- 'C/m'; // Coulomb por metro
    Unidad_Densidad_Superficial <- 'C/m²'; // Coulomb por metro cuadrado
    Unidad_Densidad_Volumetrica <- 'C/m³'; // Coulomb por metro cúbico
    Unidad_Gravitacion <- 'N'; // Newton
    
    // Constante de gravitación universal
    Definir G Como Real;
    G <- 6.67430e-11; // m³ kg?¹ s?²
    
    // Formulas
    Definir Formula_Capacitancia, Formula_Resistencia, Formula_Inductancia, Formula_Densidad_Lineal, Formula_Densidad_Superficial, Formula_Densidad_Volumetrica, Formula_Gravitacion Como Lógico;
    
    // Inicializamos las fórmulas en falso
    Formula_Capacitancia <- Falso;
    Formula_Resistencia <- Falso;
    Formula_Inductancia <- Falso;
    Formula_Densidad_Lineal <- Falso;
    Formula_Densidad_Superficial <- Falso;
    Formula_Densidad_Volumetrica <- Falso;
    Formula_Gravitacion <- Falso;
    
    // Utilidades
    Definir opcion Como Entero;
    
    // Seleccionar cálculos
    Imprimir '¿Qué deseas calcular?';
    Imprimir '1. Capacitancia';
    Imprimir '2. Resistencia';
    Imprimir '3. Inductancia';
    Imprimir '4. Densidad Lineal de Carga';
    Imprimir '5. Densidad Superficial de Carga';
    Imprimir '6. Densidad Volumétrica de Carga';
    Imprimir '7. Fuerza de Gravitación Universal';
    
    // Opciones
    Leer opcion;
    
    // Switch
    Segun opcion Hacer
        1:
            // Necesario en cada caso
            Formula_Capacitancia <- Verdadero;
            
            // Proceso de solución
            Imprimir 'Ingrese la carga (C):';
            Leer valor1;
            Imprimir 'Ingrese la diferencia de potencial (V):';
            Leer valor2;
            
            // Resultado
            resultado <- valor1 / valor2;
            
        2:
            // Necesario en cada caso
            Formula_Resistencia <- Verdadero;
            
            // Proceso de solución
            Imprimir 'Ingrese el voltaje (V):';
            Leer valor1;
            Imprimir 'Ingrese la corriente (A):';
            Leer valor2;
            
            // Resultado
            resultado <- valor1 / valor2;
            
        3:
            // Necesario en cada caso
            Formula_Inductancia <- Verdadero;
            
            // Proceso de solución
            Imprimir 'Ingrese la fuerza electromotriz inducida (V):';
            Leer valor1;
            Imprimir 'Ingrese la tasa de cambio de la corriente (A/s):';
            Leer valor2;
            
            // Resultado
            resultado <- valor1 / valor2;
            
        4:
            // Necesario en cada caso
            Formula_Densidad_Lineal <- Verdadero;
            
            // Proceso de solución
            Imprimir 'Ingrese la carga (C):';
            Leer valor1;
            Imprimir 'Ingrese la longitud (m):';
            Leer valor2;
            
            // Resultado
            resultado <- valor1 / valor2;
            
        5:
            // Necesario en cada caso
            Formula_Densidad_Superficial <- Verdadero;
            
            // Proceso de solución
            Imprimir 'Ingrese la carga (C):';
            Leer valor1;
            Imprimir 'Ingrese el área (m²):';
            Leer valor2;
            
            // Resultado
            resultado <- valor1 / valor2;
            
        6:
            // Necesario en cada caso
            Formula_Densidad_Volumetrica <- Verdadero;
            
            // Proceso de solución
            Imprimir 'Ingrese la carga (C):';
            Leer valor1;
            Imprimir 'Ingrese el volumen (m³):';
            Leer valor2;
            
            // Resultado
            resultado <- valor1 / valor2;
            
        7:
            // Necesario en cada caso
            Formula_Gravitacion <- Verdadero;
            
            // Proceso de solución
            Imprimir 'Ingrese la masa 1 (kg):';
            Leer valor1;
            Imprimir 'Ingrese la masa 2 (kg):';
            Leer valor2;
            Imprimir 'Ingrese la distancia entre las masas (m):';
            Leer valor3;
            
            // Resultado
            resultado <- G * (valor1 * valor2) / (valor3 * valor3);
            
			// En el caso de que no se seleccione un caso válido
        De Otro Modo:
            Imprimir 'Opción inválida.';
    FinSegun
    
    // Imprimir resultado con unidades según sea la fórmula activa
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
							Imprimir 'La densidad volumétrica de carga es: ', resultado, ' ', Unidad_Densidad_Volumetrica;
						Sino Si Formula_Gravitacion Entonces
								Imprimir 'La fuerza de gravitación es: ', resultado, ' ', Unidad_Gravitacion;
    Fin Si
FinProceso