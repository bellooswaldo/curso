//Suma
Funcion resultado <- Sumar(a, b)
	Definir resultado Como Real
	resultado <- a + b
FinFuncion

Algoritmo CalculadoraColaborativa
	
	Definir opcion Como Entero
	Definir n1, n2, resultado Como Real
	Definir continuar Como Logico
	
	continuar <- Verdadero
	
	Mientras continuar Hacer
		Limpiar Pantalla
		Escribir "===================================="
		Escribir "      CALCULADORA GRUPAL v1.0"
		Escribir "===================================="
		Escribir "1. Sumar"
		Escribir "2. Restar"
		Escribir "3. Multiplicar"
		Escribir "4. Dividir"
		Escribir "5. Salir"
		Escribir "------------------------------------"
		Escribir "Seleccione una operacion (1-5):"
		Leer opcion
		
		Si opcion >= 1 Y opcion <= 4 Entonces
			Escribir "Ingrese el primer numero:"
			Leer n1
			Escribir "Ingrese el segundo numero:"
			Leer n2
		FinSi
		
		Segun opcion Hacer
			1:
				// --- ESTUDIANTE A: IMPLEMENTAR SUMA AQUÍ ---
				resSuma <- Sumar(n1, n2)
				Escribir "El resultado de la Suma es: ", resSuma
				
			2:
				// --- ESTUDIANTE B: IMPLEMENTAR RESTA AQUÍ ---
				Escribir "Realizando resta..."
				
			3:
				// --- ESTUDIANTE C: IMPLEMENTAR MULTIPLICACION AQUÍ ---
				Escribir "Realizando multiplicacion..."
				
			4:
				// --- ESTUDIANTE D: IMPLEMENTAR DIVISION AQUÍ ---
				// (No olvidar validar la division por cero)
				Escribir "Realizando division..."
				
			5:
				Escribir "Saliendo de la calculadora..."
				continuar <- Falso
				
			De Otro Modo:
				Escribir "Opcion no valida. Presione una tecla para intentar de nuevo."
		FinSegun
		
		Si opcion <> 5 Entonces
			Escribir "Presione una tecla para continuar..."
			Esperar Tecla
		FinSi
		
	FinMientras
	
FinAlgoritmo
