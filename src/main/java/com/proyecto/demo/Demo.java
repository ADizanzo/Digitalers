package com.proyecto.demo;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.proyecto.DAO.ArticuloDAO;
import com.proyecto.VO.ArticuloVO;
import com.proyecto.database.Conexion;

public class Demo {

	public static void main(String[] args) throws SQLException {
		//prueba de conexion
		Conexion.conectar();
		
		
		//prueba de insertar
		ArticuloVO arti = new ArticuloVO("Viajes","Lugares","Amigos");
		ArticuloDAO.registrar(arti);
		

		//prueba de listar
		ResultSet r = ArticuloDAO.mostrarArticulos();
		while(r.next()) {
			System.out.print(r.getInt("id") + " ");
			System.out.print(r.getString("nombre") + " ");
			System.out.print(r.getString("destino") + " ");
			System.out.print(r.getString("viajeros") + " ");
			System.out.println(" *** ");
		}
		

		//prueba de borrado
		ArticuloDAO.eliminar(1);
	}

}
