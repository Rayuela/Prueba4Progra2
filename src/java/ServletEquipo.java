import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Equipo;

public class ServletEquipo extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if(request.getParameter("guardar") != null){
               String nombre=request.getParameter("nombre");
               int estadio_id=Integer.parseInt(request.getParameter("estadio_id"));
               Equipo team=new Equipo();
               team.setNombre(nombre);
               team.setEstadio_id(estadio_id);
               team.save();
               response.sendRedirect("equipos/index.jsp");
               
           }else if(request.getParameter("editar") != null){
               int equipo_id=Integer.parseInt(request.getParameter("equipo_id"));
               String nombre=request.getParameter("nombre"); 
               int estadio_id=Integer.parseInt(request.getParameter("estadio_id"));
               Equipo team=new Equipo();
               team.setEquipo_id(equipo_id);
               team.setNombre(nombre);
               team.setEstadio_id(estadio_id);
               team.update();
               response.sendRedirect("equipos/index.jsp");
               
           }else if(request.getParameter("eliminar") !=null){
               int equipo_id=Integer.parseInt(request.getParameter("eliminar"));
               out.println("Eliminar ID:"+equipo_id);
               Equipo team=new Equipo();
               team.setEquipo_id(equipo_id);
               team.delete();
               response.sendRedirect("equipos/index.jsp");
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
