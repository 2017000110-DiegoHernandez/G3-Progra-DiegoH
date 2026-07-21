Algoritmo ParqueoPriv
	Dimensionar carros[10,3]
	Definir opcion Como Entero
	Repetir
		Limpiar Pantalla
        Escribir "===== MENU ====="
        Escribir "1. Registrar"
        Escribir "2. Mostrar"
        Escribir "3. Actualizar"
        Escribir "4. Eliminar"
		Escribir "5. Buscar"
        Escribir "6. Salir"
        Leer opcion
		
        Segun opcion Hacer
            1:
				Limpiar Pantalla
				Escribir "===REGISTRAR CARRO==="
                Registrar(carros)
				Escribir "Presione cualquier tecla para continuar..."
				Esperar Tecla
            2:
				Limpiar Pantalla
				Escribir "===MOSTRAR CARRO==="
                MostrarE(carros)
				Escribir "Presione cualquier tecla para continuar..."
				Esperar Tecla
            3:
				Limpiar Pantalla
				Escribir "===ACTUALIZAR CARRO==="
                Actualizar(carros)
				Escribir "Presione cualquier tecla para continuar..."
				Esperar Tecla
            4:
				Limpiar Pantalla
				Escribir "===ELIMINAR CARRO==="
                Eliminar(carros)
				Escribir "Presione cualquier tecla para continuar..."
				Esperar Tecla
			5:
				Limpiar Pantalla
				Escribir "===BUSCAR CARRO==="
                Buscar(carros)
				Escribir "Presione cualquier tecla para continuar..."
				Esperar Tecla
        FinSegun
    Hasta Que opcion = 6
	
	
FinAlgoritmo

//Método registrar estudiantes
SubProceso Registrar(carros)
    Definir i Como Entero
	
    Para i=1 Hasta 10
        Si carros[i,1]="" Entonces
            Escribir "Placa:"
            Leer carros[i,1]
            Escribir "Nombre de propietario:"
            Leer carros[i,2]
            Escribir "Marca:"
            Leer carros[i,3]
            Escribir "Carro registrado."
        FinSi
    FinPara
	
    Escribir "Matriz llena."
FinSubProceso

//Método Mostrar estudiantes
SubProceso MostrarE(carros)
    Definir i Como Entero
	
    Escribir "PLACA    DUEÑO    MARCA"
    Para i=1 Hasta 10
        Si carros[i,1]<>"" Entonces
            Escribir carros[i,1],"   ",carros[i,2],"   ",carros[i,3]
        FinSi
    FinPara
FinSubProceso

//Método Actualizar estudiantes
SubProceso Actualizar(carros)
    Definir i Como Entero
    Definir codigo Como Cadena
	
    Escribir "Carro a buscar:"
    Leer codigo
	
    Para i=1 Hasta 10
        Si carros[i,1]=codigo Entonces
            Escribir "Nuevo nombre:"
            Leer carros[i,2]
            Escribir "Nueva edad:"
            Leer carros[i,3]
            Escribir "Registro actualizado."
        FinSi
    FinPara
FinSubProceso

//Método Eliminar estudiantes
SubProceso Eliminar(carros)
    Definir i Como Entero
    Definir codigo Como Cadena
	
    Escribir "Placa a eliminar:"
    Leer codigo
	
    Para i=1 Hasta 10
        Si carros[i,1]=codigo Entonces
            carros[i,1]=""
            carros[i,2]=""
            carros[i,3]=""
            Escribir "Registro eliminado."
		FinSi
    FinPara
FinSubProceso

//Método Eliminar estudiantes
SubProceso Buscar(carros)
    Definir i Como Entero
    Definir codigo Como Cadena
	
    Escribir "Placa a buscar:"
    Leer codigo
	
    Para i=1 Hasta 10
        Si carros[i,1]=codigo Entonces
            Escribir carros[i,1], " - Placa"
            Escribir carros[i,2], " - Dueño"
            Escribir carros[i,3], " - Marca"
            
		FinSi
    FinPara
FinSubProceso
