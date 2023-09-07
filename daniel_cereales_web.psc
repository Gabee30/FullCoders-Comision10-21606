Algoritmo daniel_cereales_web
	
	//Registro-Inicio de Sesion
	Definir  limite, i, entrada Como Entero;
	limite=30;
	i=0;
	Dimension nombre[limite];
	Dimension correo[limite];
	Dimension pass[limite];
	
	Definir nombre, correo, pass Como Caracter;
	
	
	Escribir "Bienvenido a cereales Daniel."
	Escribir "Recuerda que para poder acceder al catalogo es necesario que estes registrado."
	
	Repetir
		Escribir "Selecccione la opcion correspondiente:";
		Escribir "1. Registar"
		Escribir "2. Iniciar sesión";
		Escribir "Elija una opción(1 o 2)";
		Escribir Sin Saltar ""; 
		Leer entrada;
		Segun entrada hacer
			1: 
				Escribir Sin Saltar "Nombre: ";
				Leer nombre[i];
				Escribir Sin Saltar "Correo: ";
				Leer correo[i];
				Escribir Sin Saltar "Contraseña: ";
				Leer pass[i];
				Escribir "Registrar de datos";
			2:
				Escribir Sin Saltar "Correo: ";
				Leer correo[i];
				Escribir Sin Saltar "Contraseña: ";
				Leer pass[i];
				Escribir "Bienvenidos";
				
			De Otro Modo:
				Escribir "Opción no valida.";
		FinSegun
	Hasta Que entrada==1 o entrada==2;
	
	//Catalogo - Lista de precios
	Definir cg,lg,cs,especias Como Entero
	Definir  producto Como Caracter
	
	Repetir
		Escribir "Selecccione la Categoria:";
		Escribir " 1. Legumbres";
		Escribir " 2. Cereales";
		Escribir " 3. Especias";
		Escribir "Elija una opción(1 al 3)";
		Leer cg;
		Segun cg hacer
			1: 
				Escribir Sin Saltar "Lista de precio de Legumbres, únicamente se vende por kilo.";
				Escribir  "1. Lenteja: $400 ";
				Escribir  "2. Poroto $400 ";
				Escribir  "3. Arveja $450";
				Escribir  "4. Garbanzo $400";
			2:
				Escribir  "Lista de precio de Cereales, únicamente se vende por kilo.";
				Escribir  "1.Quinua: $600";
				Escribir  "2.Arroz integral: $600 ";
				Escribir  "3.Trigo: $650 ";
				Escribir  "4.Avena: $450 ";;
            3:
				Escribir  "Lista de precio de Especias, únicamente se vende por kilo. ";
				Escribir  "1.Comino: $600 ";
				Escribir  "2.Pimenton: $600";
				Escribir  "3.Provenzal: $600 ";
				Escribir  "4.Curcuma: $700 ";
				
		    De Otro Modo:
				Escribir "Opción no valida.";
		FinSegun
    Hasta Que entrada==1 o entrada==2 o entrada==3;
	
    //Compra de producto
	Definir op,cp, p,tp,tf,vp Como Entero
	tf<-0
	Escribir "Seleccione una opción del menú:";
	Escribir "1. Iniciar compra";
	Escribir "2. Salir";
	Escribir "Elija una opción (1 o 2)";
	Leer op;
	Segun op Hacer
		1:  
			Escribir "Ingrese la cantidad de productos que deseas comprar"
			Leer cp; //cantidad de producto
			Para  i<-1 hasta cp Con Paso 1 Hacer
				Escribir "Ingrese el precio del producto: " i;
				Leer p //precio del producto
				Escribir "Ingrese la cantidad de kilos que desea comprar: " i;
				leer vp //valor total
				tp<-p*vp
				tf<- tf+tp
			FinPara
			Escribir "Resumen de tu compra:";
			Escribir "Total a pagar : $" tf;
			Escribir "Recuerda que para pagar nos debes enviar una trasferencia al siguiente CBU: 12344."
			Escribir "No te olvides de compartirnos el comprobante."
			Escribir "Gracias por tu compra."
			
		2:
			Escribir "Ha finalizado sesión, hasta la próxima.";
			
		De Otro Modo:
			Escribir "Opción incorrecta."
			
	FinSegun
	
	
FinAlgoritmo
