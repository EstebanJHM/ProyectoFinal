<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda</title>
        <link rel="stylesheet" href="estetica/Estilos.css" />
    </head>
    <body>
        <div class="wrapper">

            <main class="contenido">
                <h1>Registrate aqui</h1>
                <form action="SvUsuarios" method="POST">
                    <p><label>Nombre:</label><input type="text" name="nombre"></p>
                    <p><label>Correo:</label><input type="text" name="correo"></p>
                    <button type="submit">Registrar</button>
                </form>

                <h1>Ver usuarios</h1>
                <p>Para ver los usuarios use el boton de abajo</p>
                <form action="SvUsuarios" method="GET">
                    <button type="submit" value="Mostrar">Mostrar</button>
                </form>

                <h1>Eliminar Usuarios</h1>
                <p>Ingrese la Id del Usuario a eliminar</p>
                <form action="SvEliminar" method="POST">
                    <p><label>Id:</label><input type="text" name="id_usuario"></p>
                    <button type="submit">Eliminar</button>
                </form>

                <h1>Actualizar Usuarios</h1>
                <p>Ingrese la Id del Usuario a editar</p>
                <form action="SvEditar" method="GET">
                    <p><label>Actualizar:</label><input type="text" name="ac_usuario"></p>
                    <button type="submit">Actualizar</button>
                </form>
            </main>
        </div>
    </body>
</html>
