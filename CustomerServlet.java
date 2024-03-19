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

@WebServlet("/CustomerServlet")
public class CustomerServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve customer details from the form
        //String placeName = request.getParameter("placeName");
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String age = request.getParameter("age");
        String gender = request.getParameter("Gender");
        String numMembers = request.getParameter("Nom");
        String roomType = request.getParameter("Typeofroom");
        String vehicleType = request.getParameter("vechicleType");
        int travelPackage = Integer.parseInt(request.getParameter("travelPackage"));
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String source = request.getParameter("source");
        String sourceState = request.getParameter("soucestate");
        String destination = request.getParameter("destination");
        String DestinationState = request.getParameter("destinationstate");

        
        // Database connection parameters (update with your database details)
        String url = "jdbc:mysql://localhost:3306/ep";
        String username = "root";
        String password = "anuthanu@123";
        
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            
            // Create a database connection
            Connection connection = DriverManager.getConnection(url, username, password);
            
            // Prepare an SQL statement to insert customer details into the database
            String sql = "INSERT INTO customerdetails1 (name, email, phone,age,Gender, Nom, Typeofroom, vechicleType, travelPackage, startDate, endDate,source,soucestate,destination,destinationstate) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ,?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            //statement.setString(1, placeName);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setString(4, age);
            statement.setString(5, gender);
            
            statement.setString(6, numMembers);
            statement.setString(7, roomType);
            statement.setString(8, vehicleType);
            statement.setInt(9, travelPackage);
            statement.setString(10, startDate);
            statement.setString(11, endDate);
            statement.setString(12, source);
            statement.setString(13, sourceState);
            statement.setString(14, destination);
            statement.setString(15, DestinationState);
            
            // Execute the SQL statement to insert data into the database
            int rowsInserted = statement.executeUpdate();
            
            // Close the database connection
            statement.close();
            connection.close();
            
            if (rowsInserted > 0) {
                // Data successfully inserted into the database
                    request.getRequestDispatcher("thankyou.jsp").forward(request, response);
                    // Redirect to the thank you page
            } else {
                // Handle the case where data insertion failed
                response.getWriter().println("Failed to store customer details in the database.");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Database connection error: " + e.getMessage());
        }
    }
}