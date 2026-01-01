package Clases;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/*
 * @author Lucas
 */

public class Main {
	public static void main(String[] args) throws IOException, Exception {
		String link = "C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/src/ReglasDeAnalisis/ReglasLexicas.flex";
		String link2 = "C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/src/ReglasDeAnalisis/ReglasSintacticas.flex";
		String[] RutaSintaxis = {"-parser","Gramatica","C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/src/ReglasDeAnalisis/Gramatica.cup"};
		generarReglasLexicasYSintacticas(link,link2,RutaSintaxis);
	} //Fin del Main
	public static void generarReglasLexicasYSintacticas(String link,String link2,String[] RutaSintaxis) throws IOException, Exception{		
		
		System.out.println("\n------------------------------------------------------------------------\n\t"
							+ "EL PROCESO DE CREACIÓN DE ARCHIVOS SE HA INICIADO\n"
							+ "------------------------------------------------------------------------\n");
		
		//Verificación de existencias
		
		System.out.println("\n------------------------------------------------------------------------\n\t"
							+ "Buscando Versiones Anteriores\n"
							+ "------------------------------------------------------------------------\n");
		Path existencia = Paths.get("C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/src/Clases/sym.java");
		if(Files.exists(existencia)){
			Files.delete(existencia);
			System.out.println("Se borró una versión anterior de \"sym.java\"");
		}
		existencia = Paths.get("C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/src/Clases/Gramatica.java");
		if(Files.exists(existencia)){
			Files.delete(existencia);
			System.out.println("Se borró una versión anterior de \"Gramatica.java\"");
		}
		existencia = Paths.get("C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/src/Clases/ReglasLexicas.java");
		if(Files.exists(existencia)){
			Files.delete(existencia);
			System.out.println("Se borró una versión anterior de \"ReglasLexicas.java\"");
		}
		existencia = Paths.get("C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/src/Clases/ReglasLexicasCUP.java");
		if(Files.exists(existencia)){
			Files.delete(existencia);
			System.out.println("Se borró una versión anterior de \"ReglasLexicasCUP.java\"");
		}
		
		
		//CREACIÓN DE ARCHIVOS
		
		System.out.println("\n------------------------------------------------------------------------\n\t"
							+ "Comenzando Creación De Archivos\n"
							+ "------------------------------------------------------------------------\n");
		File reglas = new File(link);
		JFlex.Main.generate(reglas);
		reglas = new File(link2);
		JFlex.Main.generate(reglas);
		java_cup.Main.main(RutaSintaxis);

		//MOVIENDO ARCHIVOS
		
		System.out.println("\n------------------------------------------------------------------------\n\t"
							+ "Moviendo Archivos a \"src.Clases\"\n"
							+ "------------------------------------------------------------------------\n");
		Files.move(Paths.get("C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/sym.java"), 
				Paths.get("C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/src/Clases/sym.java"));
		Files.move(Paths.get("C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/Gramatica.java"), 
				Paths.get("C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/src/Clases/Gramatica.java"));
		Files.move(Paths.get("C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/src/ReglasDeAnalisis/ReglasLexicas.java"), 
				Paths.get("C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/src/Clases/ReglasLexicas.java"));
		Files.move(Paths.get("C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/src/ReglasDeAnalisis/ReglasSintacticas.java"), 
				Paths.get("C:/Users/Lucas/Documents/NetBeansProjects/IntegradorTC1/src/Clases/ReglasSintacticas.java"));
		
		
	}
} //Fin la Clase
