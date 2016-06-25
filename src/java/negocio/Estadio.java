package negocio;

import accesodato.Conexion;

public class Estadio {
    private int estadio_id;
    private String nombre;
        Conexion con;

        public Estadio(){
            con=new Conexion();
        }
    public int getEstadio_id() {
        return estadio_id;
    }

    public void setEstadio_id(int estadio_id) {
        this.estadio_id = estadio_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public void save(){
        con.setInsertar("insert into Estadios(nombre) values('"+this.getNombre()+"')");
    }
    
    public void delete(){
        con.setInsertar("update Estadios set estado='pasivo' where estadio_id='"+this.getEstadio_id()+"'");
    }
    
    public void update(){
        con.setInsertar("update Estadios set nombre='"+this.getNombre()+"', where estadio_id="+this.getEstadio_id()+"'");
    }
    
}
