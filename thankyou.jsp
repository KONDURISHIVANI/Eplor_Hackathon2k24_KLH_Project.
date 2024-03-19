
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
    
    <style>
        .b {
            background-image:url("pics/confetti-16.gif");
            background-size: cover;
            margin-left:0px;
            margin-right:0px;
            margin-top:0px;
            margin-bottom: 0px;
            
            
            
        }
        
        .container {
            background-color: transparent; /* Semi-transparent white background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); /* Subtle box shadow */
            text-align: center;
            max-width: 500px; /* Limit container width for better readability */
            color:pink;
            font-size:20px;
        }
        
        h2 {
            color: #333;
            margin-bottom: 20px; /* Add some spacing below the heading */
        }
        
        p {
            color: #666;
            margin-bottom: 10px;
        }
        
        ul {
            list-style-type: none;
            padding: 0;
        }
        
        li {
            margin-bottom: 10px;
        }
        
        li strong {
            font-weight: bold;
        }
        
        li:last-child {
            margin-bottom: 20px;
        }
        .card{
            margin-left: 500px;
            margin-top:30px
        }
        .bp{
            background-color: goldenrod;
            height:45px;
            width:110px;
            border-radius: 8px;
            border-width: 0px;
            color: white;
        }
    </style>
</head>

        
        
</head>
    
 
<body>
    <div class="b">
    <div class="card">
    <div class="container">
        <h2 style="color:goldenrod; font-size: 34px">Thank You for Your Booking!</h2>
        
        <p style="color:paleturquoise ; font-size: 24px">Dear <%= request.getParameter("name") %>,</p>
        
        <p style="color:paleturquoise ; font-size: 24px">Your booking details have been successfully received:</p>
        
        <ul>
            <li><strong>Name:</strong> <%= request.getParameter("name") %></li>
            <li><strong>Email:</strong> <%= request.getParameter("email") %></li>
            <li><strong>Phone:</strong> <%= request.getParameter("phone") %></li>
            <li><strong>Age:</strong> <%= request.getParameter("age") %></li>
            <li><strong>Gender:</strong> <%= request.getParameter("Gender") %></li>
            <li><strong>Number of Members:</strong> <%= request.getParameter("Nom") %></li>
            <li><strong>Type of Room:</strong> <%= request.getParameter("Typeofroom") %></li>
            <li><strong>Type of Vehicle:</strong> <%= request.getParameter("vechicleType") %></li>
            <li><strong>Travel Package:</strong> <%= request.getParameter("travelPackage") %> days</li>
            <li><strong>Start Date:</strong> <%= request.getParameter("startDate") %></li>
            <li><strong>End Date:</strong> <%= request.getParameter("endDate") %></li>
            <li><strong>Source:</strong> <%= request.getParameter("source") %></li>
            <li><strong>Source state:</strong> <%= request.getParameter("soucestate") %></li>
            <li><strong>Destination:</strong> <%= request.getParameter("destination") %></li>
            <li><strong>Destination State:</strong> <%= request.getParameter("destinationstate") %></li>
            
            
            
            <%-- Calculate Travel Package Amount --%>
            <%
                String roomType = request.getParameter("Typeofroom");
                String vehicleType = request.getParameter("vehicleType");
                int travelPackageDays = Integer.parseInt(request.getParameter("travelPackage"));
                
                double roomCost = 0.0;
                double vehicleCost = 0.0;
                double travelPackageCostPerDay = 0.0;
                // Calculate room cost based on room type
                if ("AC".equals(roomType)) {
                    roomCost = 1000.0; // Replace with actual cost for Standard room
                } else if ("Non AC".equals(roomType)) {
                    roomCost = 500.0; // Replace with actual cost for Deluxe room
                }
                
                // Calculate vehicle cost based on vehicle type
                if ("car".equals(vehicleType)) {
                    vehicleCost = 500.0; // Replace with actual cost for Car
                } else if ("Innova".equals(vehicleType)) {
                    vehicleCost = 800.0; // Replace with actual cost for SUV
                }
                else if ("Bus".equals(vehicleType)) {
                    vehicleCost = 1000.0; // Replace with actual cost for SUV
                }
                else if ("Train".equals(vehicleType)) {
                    vehicleCost = 2000.0; // Replace with actual cost for SUV
                }
                else if ("Flight".equals(vehicleType)) {
                    vehicleCost = 5000.0; // Replace with actual cost for SUV
                }
                
                // Calculate travel package cost per day (you can adjust the cost per day)
                travelPackageCostPerDay = 75.0; // Replace with actual cost per day
                
                // Calculate the total cost for the travel package
                double totalCost = (roomCost + vehicleCost + (travelPackageDays * travelPackageCostPerDay));
            %>
            
            <li><strong>Travel Package Amount:</strong> Rs<%= totalCost %></li>
        </ul>
        
        <p style="color:goldenrod; font-size: 28px">We look forward to serving you during your trip!</p>
        <a href="welcome.jsp"><button class="bp">Back to Home</button></a>
    </div>
       </div>
    </div>
</body>
</html>