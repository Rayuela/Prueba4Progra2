import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Jugador;

/**
 *
 * @author Administrador
 */
public class ServletJugador extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if(request.getParameter("guardar") != null){
               String nombre=request.getParameter("nombre");
               String apepat=request.getParameter("apepat");
               String apemat=request.getParameter("apemat");
               String fecha_nacimiento=request.getParameter("fecha_nacimiento");
               int equipo_id=Integer.parseInt("equipo_id");
               Jugador playd=new Jugador();
               playd.setNombre(nombre);
               playd.setApepat(apepat);
               playd.setEquipo_id(equipo_id);
               playd.setFecha_nacimiento(fecha_nacimiento);
               playd.save();
               response.sendRedirect("inicio.jsp");
               
           }else if(request.getParameter("editar") != null){
               int jugador_id=Integer.parseInt(request.getParameter("jugador_id"));
               String nombre=request.getParameter("nombre"); 
               String apepat=request.getParameter("apepat");
               String apemat=request.getParameter("apemat");
               String fecha_nacimiento=request.getParameter("fecha_nacimiento");
               int equipo_id=Integer.parseInt("equipo_id");
               Jugador playd=new Jugador();
               playd.setJugador_id(jugador_id);
               playd.setNombre(nombre);
               playd.setApepat(apepat);
               playd.setApemat(apemat);
               playd.setFecha_nacimiento(fecha_nacimiento);
               playd.update();
               response.sendRedirect("inicio.jsp");
               
           }else if(request.getParameter("eliminar") !=null){
               int jugador_id=Integer.parseInt(request.getParameter("eliminar"));
               out.println("Eliminar ID"+jugador_id);
               Jugador playd=new Jugador();
               playd.delete();
               response.sendRedirect("inicio.jsp");
           }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
