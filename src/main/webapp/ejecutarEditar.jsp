<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.proyecto.DAO.ArticuloDAO"%>
<%@ page import="com.proyecto.VO.ArticuloVO"%>
<%@ page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Donatello Travel</title>
		<meta charset="utf-8">
		<meta name="keywords" content="viajes,experiencias,relax,aventuras,">
		<meta name="description" content="Donatello de Viaje es una página dónde contamos nuestros viajes por Argentina y otros países. Está llena de aventuras y experiencias.">
		<meta name="author" content="Augusto Dizanzo">
		<meta name="robots" content="index">
		<link rel="icon" href="Donatello.ico">
		<link rel="stylesheet" type="text/css" href="./css/index.css">
		<link rel="stylesheet" type="text/css" href="./css/normalize.css">
		<link href="https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap" rel="stylesheet">
		
</head>

<body>

    <div class="contact-form">
            <h1 class="contact-form__h1">Donatello Travel</h1>
    </div>

    <header class="header">
        <nav class="nav">
            <a href="index.html"><img src="99.png"></a>
            <button class="nav-toggle" aria-label="Abrir menú"><i class="fas fa-bars"></i></button>
            <ul class="nav-menu">
                <li class="nav-menu-item"><a href="blog.html" class="nav-menu-link nav-link">Blog</a></li>
                <li class="nav-menu-item"><a href="viajes.html" class="nav-menu-link nav-link">Viajes</a></li>
                <li class="nav-menu-item"><a href="galeria.html" class="nav-menu-link nav-link">Galeria</a></li>
                <li class="nav-menu-item"><a href="sobrenosotros.html" class="nav-menu-link nav-link">Sobre Nosotros</a></li>
                <li class="nav-menu-item"><a href="contacto.html" class="nav-menu-link nav-link">Contacto</a></li>
            </ul>

            <ul class="nav-menu-right">
                <li>
                    <a href="#">
                        <i class="fas fa-search"></i>
                    </a>
                </li>
            </ul>
        </nav>
    </header>

    
    <div class="destinos">
        <div class="box">
            <a href="noroeste.html">
                <img src="Destinos/noroeste.png">
            </a>
            <div class="capa">
                <h2>Noroeste</h2>
            </div>
        </div>	
        
        <div class="box">
            <img src="Destinos/mesopotamia.png" alt="">
            <div class="capa">
            <h2>Mesopotamia</h2>
            </div>
        </div>	

        <div class="box">
            <img src="Destinos/cuyo.png" alt="">
            <div class="capa">
            <h2>Cuyo</h2>
            </div>
        </div>	

        <div class="box">
            <img src="Destinos/costa atlantica.png" alt="">
            <div class="capa">
            <h2>Costa Atlantica</h2>
            </div>
        </div>	

        <div class="box">
            <img src="Destinos/patagonia.png" alt="">
            <div class="capa">
            <h2>Patagonia</h2>
            </div>
        </div>	

    </div>


    
    <div class="footer-links">
        <div class="footer-container">
            <ul>
                <li>
                    <h3>Blog</h3>
                </li>

                <li>
                    <a href="#">¿Quiénes somos?</a>
                </li>

                <li>
                    <a href="#">Experiencias personales</a>
                </li>
            </ul>


            <ul>
                <li>
                    <h3>Info útil</h3>
                </li>

                <li>
                    <a href="blog.html">Comienza aquí</a>
                </li>

                <li>
                    <a href="#">Conoce tu país</a>
                </li>

                <li>
                    <a href="#">Tips para viajeros</a>
                </li>

            </ul>	


            <ul>
                <li>
                    <h3>Donatello travel</h3>
                </li>

                <li>
                    <a href="viajes.html">Nuestro viajes</a>
                </li>

                <li>
                    <a href="#">Servicios</a>
                </li>

                <li>
                    <a href="contacto.html">Contacto</a>
                </li>	

            </ul>

            <ul class="final">
                <h3>Seguime!</h3>

                <div class="links">
                    <div class="links-item1">
                            <a href="https://www.facebook.com/augusto.dizanzo/">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                    </div>
        
                    <div class="links-item2">
                            <a href="https://www.instagram.com/augustodizanzo/">
                                <i class="fab fa-instagram"></i>
                            </a>
                    </div>

                    <div class="links-item3">
                            <a href="https://www.linkedin.com/in/augusto-dizanzo-918482210/">
                                <i class="fab fa-linkedin"></i>
                            </a>
                    </div>
        
                    <div class="links-item4">
                            <a href="https://www.youtube.com/channel/UConFsvqAoOht8SB5yjI0cIw/">
                                <i class="fab fa-youtube"></i>
                            </a>
                    </div>
                        
                </div>	

            </ul>

        </div>

    </div>

    <main>
        <div class="Form-container">
	        <%
	        String nombre = request.getParameter("nombre");
	        String tema = request.getParameter("destino");
	        String mensaje = request.getParameter("viajeros");
	        Integer id = Integer.parseInt(request.getParameter("id"));
	        %>
	        <p><% out.print("Editando la publicaci�n de " + nombre); %></p>
	        <%
	        ArticuloVO articulo = new ArticuloVO(nombre,destino,viajeros);
	        ArticuloDAO.editar(articulo);
	        %>
        </div>
    </main>


    <footer class="footer">
            <h2>Donatello Travel</h2>
        <div class="footer-container">
            <img src="22.png">
        </div>

            <p>Dedicados a ayudarte a conocer el mundo,<br>
            viajando y disfrutando, o simplemente<br>
            a través de nuestros artículos.<br>
            Tratamos de motivar y animar a nuestros<br>
            lectores a largarse a la aventura.</p>

            <h3>Donatello Travel Copyright | Todos los Derechos Reservados.</h3>
    </footer>	


</body>
</html>