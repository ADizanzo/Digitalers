package com.proyecto.VO;

public class ArticuloVO {
	private int id;
	private String nombre;
	private String destino;
	private String viajeros;
	
	
	public ArticuloVO() {
		
	}
	public ArticuloVO(String nombre, String destino, String viajeros) {
		this.nombre = nombre;
		this.tema = destino;
		this.mensaje = viajeros;
	}
	public ArticuloVO(int id, String nombre, String destino, String viajeros) {
		this.id = id;
		this.nombre = nombre;
		this.tema = destino;
		this.mensaje = viajeros;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDestino() {
		return destino;
	}
	public void setDestino(String destino) {
		this.destino = destino;
	}
	public String getViajeros() {
		return viajeros;
	}
	public void setViajeros(String viajeros) {
		this.viajeros = viajeros;
	}
	
	@Override
	public String toString() {
		return "ArticuloVO [id=" + id + ", nombre=" + nombre + ", destino=" + destino + ", viajeros=" + viajeros + "]";
	}
}
