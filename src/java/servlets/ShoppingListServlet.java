package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Trevor Erixon
 */
public class ShoppingListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();

        String username = (String) session.getAttribute("username");  
        String logout = request.getParameter("action");
        
        if (username != null && logout == null)
        {            
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp")
                .forward(request, response);
            return;
        }
        
        if (logout != null && logout.equals("logout"))
        {
            session.invalidate();

            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp")
            .forward(request, response);       

            return;
        }
                
        getServletContext().getRequestDispatcher("/WEB-INF/register.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();        
        String username = request.getParameter("username");
        session.setAttribute("username", username);
        
        ArrayList<String> items = new ArrayList<>();
        String requestedAction = request.getParameter("action");
        
        if (requestedAction != null)
        {
            if (requestedAction.equals("add"))
            {
                
            }
        }
        
        getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp")
                .forward(request, response);
    }

}
