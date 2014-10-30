package Controller;

import bean.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.UsuarioDao;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;


@WebServlet(name = "UsuarioController", urlPatterns = {"/Login"})
public class UsuarioController extends HttpServlet {
     private UsuarioDao dao;
 
    public UsuarioController() {
        super();
        dao = new UsuarioDao();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");    
        PrintWriter out = response.getWriter();
        out.print("Começo");
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("acesso.jsp"); 
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");    
        PrintWriter out = response.getWriter(); 
        
        String acao = request.getParameter("acao");
        //get request parameters for userID and password
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        
        HttpSession session = request.getSession(false);  
        if(acao.equalsIgnoreCase("login")){           
            Usuario user = new Usuario();
            user.setEmail(email);
            user.setSenha(senha);
            dao.validate(user);
            
            
            session.setAttribute("email", email); 
             response.sendRedirect("home.jsp");
            }
            else{    
            out.print("<p style=\"color:red\">Desculpe e-mail ou senha incorreta!</p>");    
            RequestDispatcher rd=request.getRequestDispatcher("acesso.jsp");    
            rd.include(request,response);    
        }                
          out.close();    
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
