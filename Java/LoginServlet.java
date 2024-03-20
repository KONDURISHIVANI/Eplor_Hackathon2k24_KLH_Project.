import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/ep";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "anuthanu@123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the values entered by the user
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Connect to the database
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Query the database for the user
            String query = "SELECT * FROM user1 WHERE username = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, username);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // User found in the database, check the password
                String storedPassword = resultSet.getString("password");
                
                // Compare the stored hashed password with the user's entered password
                if (verifyPassword(password, storedPassword)) {
                    // Authentication successful, redirect to a welcome page
                    response.sendRedirect("welcome.jsp");
                } else {
                    // Authentication failed, redirect back to the login page with an error message
                    response.sendRedirect("login.jsp?error=1");
                }
            } else {
                // User not found in the database, redirect back to the login page with an error message
                response.sendRedirect("login.jsp?error=1");
            }

            // Close database resources
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            // Handle any exceptions here
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=1");
        }
    }

    // Implement a method to verify passwords (e.g., using bcrypt)
    private boolean verifyPassword(String enteredPassword, String storedPassword) {
        // Implement your password verification logic here
        // You should use a strong password hashing library like bcrypt for security
        // For simplicity, we assume passwords match in this example.
        return enteredPassword.equals(storedPassword);
    }
}
