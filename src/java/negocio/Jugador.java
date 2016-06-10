package negocio;

import accesodato.Conexion;

/**
 *
 * @author Anibal
 */
public class Jugador {
    private int jugador_id;
    private String nombre;
    private String apepat;
    private String apemat;
    private String fecha_nacimiento;
    private int equipo_id;
    private String creado_por;
        Conexion con;
        
        public Jugador(){
            con= new Conexion();
}
        
    public int getJugador_id() {
        return jugador_id;
    }

    public void setJugador_id(int jugador_id) {
        this.jugador_id = jugador_id;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getApepat() {
        return apepat;
    }

    public void setApepat(String apepat) {
        this.apepat = apepat;
    }

    public String getApemat() {
        return apemat;
    }

    public void setApemat(String apemat) {
        this.apemat = apemat;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public int getEquipo_id() {
        return equipo_id;
    }

    public void setEquipo_id(int equipo_id) {
        this.equipo_id = equipo_id;
    }

    public String getCreado_por() {
        return creado_por;
    }

    public void setCreado_por(String creado_por) {
        this.creado_por = creado_por;
    }
    
    public void save(){
        con.setInsertar("insert into Jugadores(nombre,apepat,apemat,fecha_nacimiento,equipo_id,creado_por) values('"+this.getNombre()+"','"
                +this.getApepat()+"','"+this.getApemat()+"','"+this.getFecha_nacimiento()+"','"+this.getEquipo_id()+"','"+this.getCreado_por()+"','activo')");
    }
    
    public void delete(){
        con.setInsertar("update Jugadores set='pasivo' where jugador_id='"+this.getJugador_id()+"'");
    }
    
    public void update(){
        con.setInsertar("update Usuarios set Jugadores'"+this.getNombre()+"',clave'"+this.getApepat()+"',apemat'"+this.getApemat()+"',fecha_nacimiento'"
                +this.getFecha_nacimiento()+"',creado_por'"+this.getCreado_por()+"' where jugador_id'"+this.getJugador_id()+"'");
    }
    
}
