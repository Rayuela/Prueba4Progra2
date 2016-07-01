import accesodato.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ServletLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession logeado = request.getSession(true);
            String user=request.getParameter("usuario");
            String pass=request.getParameter("clave");
            Conexion con=new Conexion();
            con.setConsulta("select * from Usuarios where usuario='"+user+"'");
            try {
                while(con.getResultado().next()){
                    if(con.getResultado().getString("clave").equals(pass)){
                        logeado.setAttribute("valido","true");
                        response.sendRedirect("inicio.jsp");
                    }else{
                        logeado.setAttribute("valido","false");
                        response.sendRedirect("index.jsp");
                    }
                }
            } catch (SQLException ex) {
                Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
