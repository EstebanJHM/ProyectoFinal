/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Usuario;

/**
 *
 * @author Esteban
 */
@WebServlet(name = "SvEditar", urlPatterns = {"/SvEditar"})
public class SvEditar extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id_editar = Integer.parseInt(request.getParameter("ac_usuario"));
        Usuario usu = control.traerUsuario(id_editar);

        HttpSession misesion = request.getSession();
        misesion.setAttribute("usuEditar", usu);

        response.sendRedirect("editar.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");

        Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");
        usu.setNombre(nombre);
        usu.setCorreo(correo);

        control.editarUsuario(usu);

        response.sendRedirect("index.html");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
