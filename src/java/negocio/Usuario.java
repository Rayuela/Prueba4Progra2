package negocio;

import accesodato.Conexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Usuario {
    private int usuario_id;
    private String usuario;
    private String clave;
    private String fecha_nacimiento;
    private String estado;
    Conexion con;
    
    public static boolean checkUser(String usuario,String clave) 
     {
      boolean st =false;
      try{

	 //loading drivers for mysql
         Class.forName("com.mysql.jdbc.Driver");

 	 //creating connection with the database 
         Connection con=DriverManager.getConnection
                        ("jdbc:mysql://localhost:3306/Prueba");
         PreparedStatement ps =con.prepareStatement
                             ("select * from Usuarios where usuario=? and clave=?");
         ps.setString(1, usuario);
         ps.setString(2, clave);
         ResultSet rs =ps.executeQuery();
         st = rs.next();
        
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                 
  }   
    
        public Usuario(){
            con = new Conexion();
        }
    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }
    
    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    public void save(){
        con.setInsertar("insert into Usuarios(usuario,clave,fecha_nacimiento,estado) values('"+this.getUsuario()+"','"
                +this.getClave()+"','"+this.getFecha_nacimiento()+"','activo')");
    }
    
    public void delete(){
        con.setInsertar("update Usuarios set estado='pasivo' where usuario_id='"+this.getUsuario_id()+"'");
    }
    
    public void update(){
        con.setInsertar("update Usuarios set usuario='"+this.getUsuario()+"',clave='"+this.getClave()+"',fecha_nacimiento='"+this.getFecha_nacimiento()+"' where usuario_id='"+this.getUsuario_id()+"'");
    }
}