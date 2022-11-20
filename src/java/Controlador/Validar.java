/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import java.io.IOException;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




/**
 *
 * @author ducua
 */
public class Validar extends HttpServlet {

    EmpleadoDAO edao = new EmpleadoDAO();
    Empleado em = new Empleado();
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
        try{
        String accion = request.getParameter("accion");//tomamos el valor del input en el index o formulario y lo guardamos en la variable "accion" de tipo string
        HttpSession session = request.getSession(true);

        if (accion.equals("login")) {//AL ENVIAR EL FORMULARIO
            String user = request.getParameter("textuser");//OBTENEMOS EL USUARIO
            String pass = request.getParameter("textpass");//OBTENEMOS LA CONTRASEÑA

            boolean log = edao.login(user, pass);//CREAMOS "LOG" DE TIPO BOLEANO QUE SERA IGUAL AL OBJETO EDAO(QUIEN UTILIZA EL METODO "login" y
            //pasamos los parametro "user" y "pass"
            em.setUser(user);
            
            if (log != false) {
                session.setAttribute("loggedInUser_textuser", em.getUser());
                out.println("Correct login credentials" + log);
                request.getRequestDispatcher("Principal.jsp").forward(request, response);
            } else {
                out.println("Incorrect login credentials" + log);
                String errorMessage = "El usuario o contraseña son incorrectos";//MENSAJE DE ERROR TIPO STRING
                request.setAttribute("errorMessage", errorMessage);
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }
        }else if(accion.equals("añadir")) { 

            int id = em.getId();
            String dni = request.getParameter("textdni");
            String nom = request.getParameter("textnom");
            String tel = request.getParameter("texttel");
            String est = request.getParameter("textesta");
            String user = request.getParameter("textusr");

            em.setId(id);
            em.setDni(dni);
            em.setNom(nom);
            em.setTel(tel);
            em.setEstado(est);
            em.setUser(user);

            if (edao.Add(em) != false) {
                out.println("DATOS CARGADOS");
                String successMessageDB = "DATOS CARGADOS";
                
                request.setAttribute("successDB", successMessageDB);
                RequestDispatcher rd = request.getRequestDispatcher("/empleado.jsp");
                rd.forward(request, response);
            } else {
                out.println("DATOS NO CARGADOS");
                String errorMessageDB = "DATOS NO CARGADOS";
                request.setAttribute("errorDB", errorMessageDB);
                RequestDispatcher rd = request.getRequestDispatcher("/empleado.jsp");
                rd.forward(request, response);
            }
        }
        }catch(java.lang.NumberFormatException e){
            request.getRequestDispatcher("empleado.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Validar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
    

