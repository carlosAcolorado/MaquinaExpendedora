Algoritmo maquina_expendedora 
	Definir efectivo,total_efectivo,cambio,op, faltante Como Entero;
	Definir producto1, producto2,producto3,producto4,seleccion Como Entero;
	Definir nuevo_efectivo,p1, cantidad_p1, abastecimiento,menu Como Entero;
	Definir cantidad_p2, cantidad_p3,cantidad_p4, ventas Como Entero;
	Definir respuesta,op_abas,usuario, contraseña Como Caracter;
	efectivo=0;
	total_efectivo=0;
	producto1=2000;
	producto2=1000;
	producto3=3000;
	producto4=2000;
	cambio=0;
	nuevo_efectivo=0;
	cantidad_p1=0;
	cantidad_p2=0;
	cantidad_p3=0;
	cantidad_p4=0;
	ventas=0;
	
	Repetir
		Escribir "MAQUINA EXPENDEDORA 2.0";
		Escribir "";
		Escribir "1.Ingresar productos(solo administrador)";
		Escribir "2.Comprar un producto";
		Escribir "3.Apagar la maquina";
	
		leer menu;
		
		Segun menu Hacer
			1:
				Borrar Pantalla;
				Repetir
				Escribir "Ingrese su usuario";
				leer usuario;
				Escribir "Ingrese su contraseña";
				leer contraseña;
				Si usuario="administrador" y contraseña="12345678" Entonces
					
					Repetir
						Escribir "............Bienvenido......................";
						Escribir "";
						Escribir "Seleccione el producto que desea abastecer : ";
						Escribir "1. Gaseosa";
						Escribir "2. Papas";
						Escribir "3. Chocolatina";
						Escribir "4. Jugo";
						leer abastecimiento;
						Segun abastecimiento Hacer
							1:
								Escribir "Ingrese la cantidad de gaseosas para abastecer la maquina";
								Leer cantidad_p1;
								Escribir "Desea abastecer otro producto? si/no";
								leer op_abas;
							2:	
								Escribir "Ingrese la cantidad de Papas para abastecer la maquina";
								Leer cantidad_p2;
								Escribir "Desea abastecer otro producto? si/no";
								leer op_abas;
							3: 
								Escribir "Ingrese la cantidad de chocolatinas para abastecer la maquina";
								Leer cantidad_p3;
								Escribir "Desea abastecer otro producto? si/no";
								leer op_abas;
							4:
								Escribir "Ingrese la cantidad de jugos para abastecer la maquina";
								Leer cantidad_p4;
								Escribir "Desea abastecer otro producto? si/no";
								leer op_abas;
							De Otro Modo:
								Escribir "Opcion incorrecta";
						Fin Segun
					Hasta Que op_abas="no";
					Borrar Pantalla;
				SiNo
					Escribir "Datos incorrectos";
				Fin Si
			Hasta Que usuario="administrador" y contraseña="12345678";
			2:
				Repetir
					Escribir "Ingrese porfavor el efectivo ";
					leer efectivo;
					total_efectivo=total_efectivo+efectivo;
					Escribir "Desea ingresar mas efectivo";
					Escribir "si/no";
					leer respuesta;
				Hasta Que respuesta= "no";
				Borrar Pantalla;
				
				Repetir
					total_efectivo=total_efectivo+nuevo_efectivo;
					Escribir "";
					Escribir "Su efectivo es de: ",total_efectivo;
					Escribir "";
					Escribir "Por favor elija su producto"; 
					Escribir "...........................";
					Escribir "1: Gaseosa.....$2000";
					Escribir "2: Papas.......$1000";
					Escribir "3: Chocolatina.$3000";
					Escribir "4: Jugo........$2000";
					leer op;
					Segun op Hacer
						1:
							Si total_efectivo<producto1 Entonces
								faltante=(total_efectivo-producto1)*(-1);
								Escribir "Debe ingresar: $",faltante;
								leer nuevo_efectivo;
								Borrar Pantalla;
							SiNo
								Borrar Pantalla;
								Escribir "Retire su producto";
								cambio=total_efectivo-producto1;
								cantidad_p1=cantidad_p1-1;
								ventas=ventas+producto1;
							Fin Si
						2:
							Si total_efectivo<producto2 Entonces
								faltante=(total_efectivo-producto2)*(-1);
								Escribir "Debe ingresar: $",faltante;
								leer nuevo_efectivo;
								Borrar Pantalla;
							SiNo
								Borrar Pantalla;
								Escribir "Retire su producto";
								cambio=total_efectivo-producto2;
								cantidad_p2=cantidad_p2-1;
								ventas=ventas+producto2;
							Fin Si
						3:
							Si total_efectivo<producto3 Entonces
								faltante=(total_efectivo-producto3)*(-1);
								Escribir "Debe ingresar: $",faltante;
								leer nuevo_efectivo;
								Borrar Pantalla;
							SiNo
								Borrar Pantalla;
								Escribir "Retire su producto";
								cambio=total_efectivo-producto3;
								cantidad_p3=cantidad_p3-1;
								ventas=ventas+producto3;
							Fin Si
						4:
							Si total_efectivo<producto4 Entonces
								faltante=(total_efectivo-producto4)*(-1);
								Escribir "Debe ingresar: $",faltante;
								leer nuevo_efectivo;
								Borrar Pantalla;
							SiNo
								Borrar Pantalla;
								Escribir "Retire su producto";
								cambio=total_efectivo-producto4;
								cantidad_p4=cantidad_p4-1;
								ventas=ventas+producto4;
							Fin Si
						De Otro Modo:
							
					Fin Segun
					Escribir "Su cambio es de: $",cambio;
					Escribir "Gracias por su compra";
				Hasta Que total_efectivo>= producto1 o total_efectivo>= producto2 o total_efectivo>= producto2 o total_efectivo>= producto2;
			3:
				Borrar Pantalla;
				Escribir "INVENTARIO";
				Escribir "Unidades de Gaseosa disponible:.......",cantidad_p1;
				Escribir "Unidades de Papa disponible:..........",cantidad_p2;
				Escribir "Unidades de Chosolatina disponible:...",cantidad_p3;
				Escribir "Unidades de Jugo disponible:..........",cantidad_p4;
				Escribir "INGRESOS";
				Escribir "El ingreso total de la maquina fue de: $",ventas;
				Escribir "";
				Escribir "!ADVERTENCIA¡ esta a punto de apagar el sistema";
				Escribir "Si desea continuar presione ENTER";
				Esperar Tecla;
			De Otro Modo:
				Escribir "Opcion incorrecta";
		Fin Segun
		Escribir ".....................";
Hasta Que menu=3
Borrar Pantalla;
Escribir "Sistema apagado con exito";

FinAlgoritmo
