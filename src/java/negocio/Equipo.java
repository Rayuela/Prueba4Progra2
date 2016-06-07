package negocio;

/**
 *
 * @author Anibal
 */
public class Equipo {
    private int equipo_id;
    private String nombre;
    private int estadio_id;

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
    
}
