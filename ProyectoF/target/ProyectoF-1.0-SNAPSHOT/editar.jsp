
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
        <link rel="stylesheet" href="Style/Estilos.css" />
    </head>
    <body>
        <% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>
        <h1>Editar datos</h1>
            <form action="SvEditar" method="POST">
                <p><label>Nombre:</label><input type="text" name="nombre" value="<%=usu.getNombre()%>"></p>
                <p><label>Correo:</label><input type="text" name="correo" value="<%=usu.getCorreo()%>"></p>
                <button type="submit">Guardar</button>
            </form>
    </body>
</html>
