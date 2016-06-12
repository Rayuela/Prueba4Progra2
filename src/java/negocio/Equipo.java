package negocio;

import accesodato.Conexion;

public class Equipo {
    private int equipo_id;
    private String nombre;
    private int estadio_id;
        Conexion con;
        
        public Equipo(){
            con=new Conexion();
        }

    public int getEquipo_id() {
        return equipo_id;
    }

    public void setEquipo_id(int equipo_id) {
        this.equipo_id = equipo_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEstadio_id() {
        return estadio_id;
    }

    public void setEstadio_id(int estadio_id) {
        this.estadio_id = estadio_id;
    }
    
    public void save(){
        con.setInsertar("insert into Equipos(nombre,estadio_id,estado) values('"+this.getNombre()+"','"
                +this.getEstadio_id()+"','activo)");
    }
    
    public void delete(){
        con.setInsertar("update Equipos set='pasivo' where usuario_id='"+this.getEquipo_id()+"'");
    }
    
    public void update(){
        con.setInsertar("update Usuarios set Equipos'"+this.getNombre()+"',estadio_id'"+this.getEstadio_id()+"' where equipo_id'"+this.getEquipo_id()+"'");
    }
    
}
