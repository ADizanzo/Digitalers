package com.proyecto.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


import com.proyecto.VO.ArticuloVO;
import com.proyecto.database.Conexion;

public class ArticuloDAO {
	static Connection conexion = Conexion.conectar();
	static Statement st;
	static PreparedStatement ps;
	
	//OPERACIONES CRUD
	//INSERT
	public static void registrar(ArticuloVO arti) {
		try {
			st = conexion.createStatement();
			st.execute("INSERT INTO articulos (nombre,destino,viajeros) VALUES ('" 
					+ arti.getNombre() + "','"
					+ arti.getDestino() + "','" 
					+ arti.getViajeros() + "')");
			System.out.println("Se guardó el artículo");
			st.close();
			conexion.close();
		}catch(Exception e) {
			System.out.println("Se produjo un Error");
			e.printStackTrace();
		}
	}
	
	//SELECT
	public static ResultSet mostrarArticulos() {
		ResultSet r = null;
		try {
			st = conexion.createStatement();
			r = st.executeQuery("SELECT *FROM articulos");
			System.out.println("Mostrar datos");
		}catch(Exception e) {
			System.out.println("Se produjo un Error");
			e.printStackTrace();
		}
		return r;
	}
	
	//DELETE
	public static void eliminar(int id) {
		try {
			st = conexion.createStatement();
			st.execute("DELETE FROM articulos WHERE id = " + id);
			System.out.println("Eliminado");
		}catch(Exception e) {
			System.out.println("Se produjo un Error");
			e.printStackTrace();
		}
	}
	
	//SELECT POR ID
	public static ResultSet mostrarArticuloPorId(Integer id) {
		ResultSet r = null;
		try {
			st = conexion.createStatement();
			r = st.executeQuery("SELECT *FROM articulos WHERE id = " + id);
			System.out.println("Mostrar datos");
		}catch(Exception e) {
			System.out.println("Se produjo un Error");
			e.printStackTrace();
		}
		return r;
	}
	
	//UPDATE
	public static void editar(ArticuloVO articulo) {
		try {
			st = conexion.createStatement();
			st.execute("UPDATE articulos SET nombre = '"+ articulo.getNombre() + "', "
					+ "destino = '" + articulo.getDestino() + "', "
					+ "viajeros = '" + articulo.getViajeros() 
					+ "' WHERE id = " + articulo.getId());
			System.out.println("Editado correctamente");
		}catch(Exception e) {
			System.out.println("Se produjo un Error");
			e.printStackTrace();
		}
	}
}