import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logoutServlet")
public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the user's session
        HttpSession session = request.getSession(false);
        
        if (session != null) {
            // Invalidate the session to log the user out
            session.invalidate();
        }
        
        // Redirect the user back to the login page or any other appropriate page
        response.sendRedirect("login.jsp");
    }
}
