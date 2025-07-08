/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.util.List;
import persistencia.ControlarPersistencia;


/**
 *
 * @author Esteban
 */
public class Controladora {
    ControlarPersistencia controlPersis = new ControlarPersistencia();
    
    public void crearUsuario(Usuario usu){
        controlPersis.create(usu);
    }
    public List<Usuario> traerUsuarios(){
        return controlPersis.traerUsuarios();
    }

    public void borrarUsuario(int id_eliminar) {
      controlPersis.borrarUsuario(id_eliminar);
    }

    public Usuario traerUsuario(int id_editar) {
       return controlPersis.traerUsuario(id_editar);
    }

    public void editarUsuario(Usuario usu) {
        controlPersis.editarUsuario (usu);
    }
}
