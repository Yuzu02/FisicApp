Algoritmo AccionYReaccion
		Definir F1_2, F2_1 Como Real; 
		Definir opcion Como Entero;
		
		Imprimir '¿Qué fuerza desea calcular?';
		Imprimir '1. F1,2';
		Imprimir '2. F2,1';
		
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Imprimir 'Ingrese la fuerza F2,1:';
				Leer F2_1;
				
				F1_2 <- -F2_1;
				Imprimir 'La fuerza F1,2 es: ', F1_2;
				
			2:
				Imprimir 'Ingrese la fuerza F1,2:';
				Leer F1_2;
				
				F2_1 <- -F1_2;
				Imprimir 'La fuerza F2,1 es: ', F2_1;
				
			De Otro Modo:
				Imprimir 'Opción no válida';
		FinSegun
FinProceso

FinAlgoritmo
