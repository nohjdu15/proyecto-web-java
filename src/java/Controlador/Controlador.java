/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ducua
 */
public class Controlador {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        
        switch (accion) {
            case "Principal":
                request.getRequestDispatcher("Principal.jsp").forward(request, response);
                break;
            case "añadir":
                request.getRequestDispatcher("empleado.jsp").forward(request, response);
                break;
            default:
                throw new AssertionError();
        }
        
        String añadir = request.getParameter("añadir");
        switch (añadir){
            case "agregar_empleados":
                request.getRequestDispatcher("empleado.jsp").forward(request, response);
                break;
            default:
                throw new AssertionError();
      
        }
    }
}
