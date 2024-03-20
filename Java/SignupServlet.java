import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signupServlet")
public class SignupServlet extends HttpServlet {
    // Define your database URL, username, and password
    private static final String DB_URL = "jdbc:mysql://localhost:3306/ep";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "anuthanu@123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if (username != null && !username.isEmpty() && password != null && !password.isEmpty() && password.equals(confirmPassword)) {
            try {
                // Create a database connection
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep", "root", "anuthanu@123");

                // Define the SQL query to insert user data
                String insertQuery = "INSERT INTO user1 (username, password) VALUES (?, ?)";

                // Create a prepared statement
                PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
                preparedStatement.setString(1, username);
                preparedStatement.setString(2, password);

                // Execute the insert query
                int rowsInserted = preparedStatement.executeUpdate();

                // Close the resources
                preparedStatement.close();
                connection.close();

                if (rowsInserted > 0) {
                    // Registration successful
                    response.sendRedirect("login.jsp");
                } else {
                    // Registration failed
                    response.sendRedirect("signup.jsp?error=2");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                // Handle database errors
                response.sendRedirect("signup.jsp?error=3");
            }
        } else {
            // Invalid input or password mismatch
            response.sendRedirect("signup.jsp?error=1");
        }
    }
}
