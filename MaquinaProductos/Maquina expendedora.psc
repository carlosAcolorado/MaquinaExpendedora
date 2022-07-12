Algoritmo maquina_expendedora 
	Definir efectivo,total_efectivo,cambio,op, faltante Como Entero;
	Definir producto1, producto2,producto3,producto4,seleccion Como Entero;
	Definir nuevo_efectivo Como Entero;
	Definir respuesta Como Caracter;
	efectivo=0;
	total_efectivo=0;
	producto1=2000;
	producto2=1000;
	producto3=3000;
	producto4=2000;
	cambio=0;
	nuevo_efectivo=0;

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
				Escribir "Presione enter cuando lo haya retirado";
				Esperar Tecla;
				cambio=total_efectivo-producto1;
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
				Escribir "Presione enter cuando lo haya retirado";
				Esperar Tecla;
				cambio=total_efectivo-producto2;
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
				Escribir "Presione enter cuando lo haya retirado";
				Esperar Tecla;
				cambio=total_efectivo-producto3;
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
				Escribir "Presione enter cuando lo haya retirado";
				Esperar Tecla;
				cambio=total_efectivo-producto4;
			Fin Si
		De Otro Modo:
			
	Fin Segun
Hasta Que total_efectivo>= producto1 o total_efectivo>= producto2 o total_efectivo>= producto2 o total_efectivo>= producto2;

Escribir "";
Escribir ".....................";
Escribir "Su cambio es de: $",cambio;
Escribir "Gracias por su compra";

FinAlgoritmo
