/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ducua
 */
public class EmpleadoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    PreparedStatement pss;
    ResultSet rs;
    
    Empleado em = new Empleado();

    public boolean login(String user, String dni) throws SQLException {//METODO QUE NOS CONSULTA EL EMPLEADO Y LA CONTRASEÑA

        String sql = "select * from empleado where empleado.User=? and empleado.Dni=?";

        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, dni);
            rs = ps.executeQuery();

        }catch(SQLException e) {
            System.out.println(e);
        }

        return rs.next();
    }

    public boolean Add(Empleado em) {//METODO QUE NOS AGREGA EMPLEADOS A LA BASE DE DATOS

        con = cn.Conexion();
        String sql = "insert into empleado (IdEmpleado, Dni, Nombres, Telefono, Estado, User) values (?,?,?,?,?,?)";
        
        
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, em.getId());
            ps.setString(2, em.getDni());
            ps.setString(3, em.getNom());
            ps.setString(4,  String.valueOf(em.getTel()));
            ps.setString(5, em.getEstado());
            ps.setString(6, em.getUser());
            ps.execute();
            return true;
            
        }catch(SQLException e){
            System.out.println(e + "no cargaron");
            
        return false;
        }
    }

    public Empleado validar(String user, String dni) {

        String sql = "select * from empleado where empleado.User=? and empleado.Dni=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            /*
            solo vamos a trabajar dos campos asi
             */
            ps.setString(1, user);
            ps.setString(2, dni);
            rs = ps.executeQuery();
            while (rs.next()) {
                em.setId(rs.getInt("IdEmpleado"));
                em.setUser(rs.getString("User"));
                em.setDni(rs.getString("Dni"));
                em.setNom(rs.getString("Nombres"));
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return em;
    }
    
}
