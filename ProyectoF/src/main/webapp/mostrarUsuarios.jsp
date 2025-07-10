<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Mostrar Usuarios</title>
        <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>
        <h1>Lista de usuarios</h1>

        <%
            List<Usuario> listaUsuarios = (List<Usuario>) session.getAttribute("listaUsuarios");
            if (listaUsuarios != null && !listaUsuarios.isEmpty()) {
                int cont = 1;
                for (Usuario usu : listaUsuarios) {
        %>
                    <p><b>Usuario N° <%= cont %></b></p>
                    <p>Id: <%= usu.getId() %></p>
                    <p>Nombre: <%= usu.getNombre() %></p>
                    <p>Correo: <%= usu.getCorreo() %></p>
                    <hr>
        <%
                    cont++;
                }
            } else {
        %>
                <p><i>No hay usuarios registrados.</i></p>
        <%
            }
        %>
    </body>
</html>
