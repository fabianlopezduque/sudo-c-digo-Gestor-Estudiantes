Funcion opc=menu
	Escribir "....bienvenido...."
	Escribir "1.registro codigo"
	Escribir "2.registros estudiante"
	Escribir "3.notas parciales"
	Escribir "4 lista estudiantes"
	Escribir "....salir...."
	Leer opc
FinFuncion


Funcion dbcodigo=crearCodigo(i,1)

	Repetir
		Escribir "Ingresa el codigo: "
		Leer codigo  
		para j = 1 Hasta i Hacer
			si dbcodigo[i,1] = codigo Entonces
				Escribir "..Error: El codigo ingresado ya existe, ingresa uno diferente" 
				existe = Verdadero
			FinSi
		FinPara
	Hasta Que existe = Falso
	dbcodigo[i,1] = codigo  
	Escribir ">>Ingresa el nombre: "
	leer dbcodigo[i,2] = nombre 
	Escribir ">>Ingresa el codigo: "
	Leer dbcodigo[i,1] = codigo 
	i=i+1 // incrementa el contador //
	Escribir "----el codigo fue creado----"
FinFuncion


Funcion dbestudiante=crearEstudiante(i,2)
		Repetir
		Escribir "Ingresa el estudiante: "
		Leer estudiante  
		para j = 1 Hasta i Hacer
			si dbestudiante[i,2] = estudiante Entonces
				Escribir "..Error: El estudiante ingresado ya existe, ingresa uno diferente" 
				existe = Verdadero
			FinSi
		FinPara
	Hasta Que existe = Falso
	dbestudiante[i,2] = codigo  
	Escribir ">>Ingresa el nombre "
	leer dbestudiante[i,2] = nombre 
	Escribir ">>Ingresa el codigo "
	Leer dbcodigo[i,1] = codigo 
	i=i+1 // incrementa el contador //
	Escribir "----el alumno fue creado----"
FinFuncion

Funcion dbnotas=crearNotas(i,3)
		Repetir
		Escribir "Ingresa nota1 "
		Leer nota1  
		Escribir "ingrear nota2"
		Leer nota2
		Escribir "ingrese nota3"
		Leer nota3
		para j = 1 Hasta i Hacer
			si dbnota[i,3] = codigo Entonces
				Escribir "..Error: El codigo ingresado ya existe, ingresa uno diferente" 
				existe = Verdadero
			FinSi
		FinPara
	Hasta Que existe = Falso
	dbnota[i,3] = codigo  
	Escribir ">>Ingresa el nombre "
	leer dbnota[i,2] = nota 
	Escribir ">>Ingresa el codigo "
	Leer dbcodigo[i,1] = codigo 
	i=i+1 // incrementa el contador //
	Escribir "----la nota fue creado----"
FinFuncion

Funcion dbasisencia=listaEstudiantes(i,2)
Repetir
	Si inasiste >10 y < 15 inasistencias Entonces
		resultado =-0.5
	SiNo
		>15 inasistencias = -1
	Fin Si
	
	
Algoritmo estudent
	Opc=menu
	Para dbcodigo=crearCodigo Hasta 10 Con Paso 1 Hacer
		i=1
		Dimensionar dbcodigo=crearCodigo(i,1), dbnombre=crarEstudiante(i,2), dbnota=crearNota(i,3) , dblistaEstudiantes (i,4) , dbinasistencia=(i,5)
		Segun opc Hacer
			1:
				crearCodigo(i,1)
			2:
				crearEstudiante(i,2)
			3:
				cearNota(i,3)
			4:
				listaEstudiantes(i,4)
			5:
				notaFinal
				suma =notasparciales(i,3)-inasistencias(i.5)
			De Otro Modo:
				Opc=0
		Fin Segun
	Fin Para
FinAlgoritmo

