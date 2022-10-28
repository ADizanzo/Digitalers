package com.proyecto.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
	public static Connection conexion = null;
	public static Connection conectar(){
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conexion = DriverManager.getConnection("jdbc:mysql://localhost/DonatelloTravel","root","");
			System.out.println("Conectado");
		}catch(Exception e) {
			System.out.println("No Conectado");
			e.printStackTrace();
		}
		return conexion;
	}
}
