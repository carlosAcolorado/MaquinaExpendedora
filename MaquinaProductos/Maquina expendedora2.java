/* Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
Es posible que el codigo generado no sea completamente correcto. Si encuentra
errores por favor reportelos en el foro (http://pseint.sourceforge.net). */

// En java, el nombre de un archivo fuente debe coincidir con el nombre de la clase que contiene,
// por lo que este archivo debería llamarse "MAQUINA_EXPENDEDORA.java."

import java.io.*;

public class maquina_expendedora {

	public static void main(String args[]) throws IOException {
		BufferedReader bufEntrada = new BufferedReader(new InputStreamReader(System.in));
		int abastecimiento;
		int cambio;
		int cantidad_p1;
		int cantidad_p2;
		int cantidad_p3;
		int cantidad_p4;
		String contrasena;
		String contraseña;
		int efectivo;
		int faltante;
		int menu;
		int nuevo_efectivo;
		int op;
		String op_abas;
		int p1;
		int producto1;
		int producto2;
		int producto3;
		int producto4;
		String respuesta;
		int seleccion;
		int total_efectivo;
		String usuario;
		int ventas;
		efectivo = 0;
		total_efectivo = 0;
		producto1 = 2000;
		producto2 = 1000;
		producto3 = 3000;
		producto4 = 2000;
		cambio = 0;
		nuevo_efectivo = 0;
		cantidad_p1 = 0;
		cantidad_p2 = 0;
		cantidad_p3 = 0;
		cantidad_p4 = 0;
		ventas = 0;
		do {
			System.out.println("MAQUINA EXPENDEDORA 2.0");
			System.out.println("");
			System.out.println("1.Ingresar productos(solo administrador)");
			System.out.println("2.Comprar un producto");
			System.out.println("3.Apagar la maquina");
			menu = Integer.parseInt(bufEntrada.readLine());
			switch (menu) {
			case 1:
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				do {
					System.out.println("Ingrese su usuario");
					usuario = bufEntrada.readLine();
					System.out.println("Ingrese su contraseña");
					contrasena = bufEntrada.readLine();
					if (usuario.equals("administrador") && contrasena.equals("12345678")) {
						do {
							System.out.println("............Bienvenido......................");
							System.out.println("");
							System.out.println("Seleccione el producto que desea abastecer : ");
							System.out.println("1. Gaseosa");
							System.out.println("2. Papas");
							System.out.println("3. Chocolatina");
							System.out.println("4. Jugo");
							abastecimiento = Integer.parseInt(bufEntrada.readLine());
							switch (abastecimiento) {
							case 1:
								System.out.println("Ingrese la cantidad de gaseosas para abastecer la maquina");
								cantidad_p1 = Integer.parseInt(bufEntrada.readLine());
								System.out.println("Desea abastecer otro producto? si/no");
								op_abas = bufEntrada.readLine();
								break;
							case 2:
								System.out.println("Ingrese la cantidad de Papas para abastecer la maquina");
								cantidad_p2 = Integer.parseInt(bufEntrada.readLine());
								System.out.println("Desea abastecer otro producto? si/no");
								op_abas = bufEntrada.readLine();
								break;
							case 3:
								System.out.println("Ingrese la cantidad de chocolatinas para abastecer la maquina");
								cantidad_p3 = Integer.parseInt(bufEntrada.readLine());
								System.out.println("Desea abastecer otro producto? si/no");
								op_abas = bufEntrada.readLine();
								break;
							case 4:
								System.out.println("Ingrese la cantidad de jugos para abastecer la maquina");
								cantidad_p4 = Integer.parseInt(bufEntrada.readLine());
								System.out.println("Desea abastecer otro producto? si/no");
								op_abas = bufEntrada.readLine();
								break;
							default:
								System.out.println("Opcion incorrecta");
							}
						} while (!op_abas.equals("no"));
						System.out.println(""); // no hay forma directa de borrar la consola en Java
					} else {
						System.out.println("Datos incorrectos");
					}
				} while (!(usuario.equals("administrador") && contrasena.equals("12345678")));
				break;
			case 2:
				do {
					System.out.println("Ingrese porfavor el efectivo ");
					efectivo = Integer.parseInt(bufEntrada.readLine());
					total_efectivo = total_efectivo+efectivo;
					System.out.println("Desea ingresar mas efectivo");
					System.out.println("si/no");
					respuesta = bufEntrada.readLine();
				} while (!respuesta.equals("no"));
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				do {
					total_efectivo = total_efectivo+nuevo_efectivo;
					System.out.println("");
					System.out.println("Su efectivo es de: "+total_efectivo);
					System.out.println("");
					System.out.println("Por favor elija su producto");
					System.out.println("...........................");
					System.out.println("1: Gaseosa.....$2000");
					System.out.println("2: Papas.......$1000");
					System.out.println("3: Chocolatina.$3000");
					System.out.println("4: Jugo........$2000");
					op = Integer.parseInt(bufEntrada.readLine());
					switch (op) {
					case 1:
						if (total_efectivo<producto1) {
							faltante = (total_efectivo-producto1)*(-1);
							System.out.println("Debe ingresar: $"+faltante);
							nuevo_efectivo = Integer.parseInt(bufEntrada.readLine());
							System.out.println(""); // no hay forma directa de borrar la consola en Java
						} else {
							System.out.println(""); // no hay forma directa de borrar la consola en Java
							System.out.println("Retire su producto");
							cambio = total_efectivo-producto1;
							cantidad_p1 = cantidad_p1-1;
							ventas = ventas+producto1;
						}
						break;
					case 2:
						if (total_efectivo<producto2) {
							faltante = (total_efectivo-producto2)*(-1);
							System.out.println("Debe ingresar: $"+faltante);
							nuevo_efectivo = Integer.parseInt(bufEntrada.readLine());
							System.out.println(""); // no hay forma directa de borrar la consola en Java
						} else {
							System.out.println(""); // no hay forma directa de borrar la consola en Java
							System.out.println("Retire su producto");
							cambio = total_efectivo-producto2;
							cantidad_p2 = cantidad_p2-1;
							ventas = ventas+producto2;
						}
						break;
					case 3:
						if (total_efectivo<producto3) {
							faltante = (total_efectivo-producto3)*(-1);
							System.out.println("Debe ingresar: $"+faltante);
							nuevo_efectivo = Integer.parseInt(bufEntrada.readLine());
							System.out.println(""); // no hay forma directa de borrar la consola en Java
						} else {
							System.out.println(""); // no hay forma directa de borrar la consola en Java
							System.out.println("Retire su producto");
							cambio = total_efectivo-producto3;
							cantidad_p3 = cantidad_p3-1;
							ventas = ventas+producto3;
						}
						break;
					case 4:
						if (total_efectivo<producto4) {
							faltante = (total_efectivo-producto4)*(-1);
							System.out.println("Debe ingresar: $"+faltante);
							nuevo_efectivo = Integer.parseInt(bufEntrada.readLine());
							System.out.println(""); // no hay forma directa de borrar la consola en Java
						} else {
							System.out.println(""); // no hay forma directa de borrar la consola en Java
							System.out.println("Retire su producto");
							cambio = total_efectivo-producto4;
							cantidad_p4 = cantidad_p4-1;
							ventas = ventas+producto4;
						}
						break;
					default:
					}
					System.out.println("Su cambio es de: $"+cambio);
					System.out.println("Gracias por su compra");
				} while (!(total_efectivo>=producto1 || total_efectivo>=producto2 || total_efectivo>=producto2 || total_efectivo>=producto2));
				break;
			case 3:
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				System.out.println("INVENTARIO");
				System.out.println("Unidades de Gaseosa disponible:......."+cantidad_p1);
				System.out.println("Unidades de Papa disponible:.........."+cantidad_p2);
				System.out.println("Unidades de Chosolatina disponible:..."+cantidad_p3);
				System.out.println("Unidades de Jugo disponible:.........."+cantidad_p4);
				System.out.println("INGRESOS");
				System.out.println("El ingreso total de la maquina fue de: $"+ventas);
				System.out.println("");
				System.out.println("!ADVERTENCIA¡ esta a punto de apagar el sistema");
				System.out.println("Si desea continuar presione ENTER");
				System.in.read(); // a diferencia del pseudocódigo, espera un Enter, no cualquier tecla
				break;
			default:
				System.out.println("Opcion incorrecta");
			}
			System.out.println(".....................");
		} while (menu!=3);
		System.out.println(""); // no hay forma directa de borrar la consola en Java
		System.out.println("Sistema apagado con exito");
	}


}

