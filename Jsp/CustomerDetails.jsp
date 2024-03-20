

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Details</title>
    <style>
        .card{
            background-color:oldlace;
            height:800px;
            width:500px;
            border-radius: 6px;
            boder-width:0px;
            color: black;
            font-weight: bold;
            font-size: 21px;
            margin-left: 550px;
            border-radius: 8px;
            border-width: 0px;
           text-align: center;
           padding-top:30px;
            
        }
        .back{
           background-image:url('pics/trav.jpg');
           height:75%;
           width:75%;
        }
        .bp{
            background-color: goldenrod;
            height:45px;
            width:110px;
            border-radius: 8px;
            border-width: 0px;
            color: white;
            margin-left:20px;
        }
     </style>
</head>
<body class="back">
    <h2 style='margin-left:670px;font-size:37px;'>Customer Details</h2>
    <div class="card">
    <form action="CustomerServlet" method="POST">
      
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" required><br><br>
            
        <label for="age">Age:</label>
        <input type="tel" id="age" name="age" required><br><br>
            
        <label>Gender:</label>
        <input type="radio" id="male" name="Gender" value="Male" required>
        <label for="male">Male</label>
        <input type="radio" id="female" name="Gender" value="Female" required>
        <label for="female">Female</label><br><br>
        
        <label for="numberOfMembers">Number of Members:</label>
        <input type="tel" id="numberOfMembers" name="Nom" required><br><br>
        
        
        <label for="Type of Room">Type of Room:</label>
        <select id="typeOfRoom" name="Typeofroom" required>
            <option value="AC">AC</option>
            <option value="Non AC">Non AC</option>
        </select><br><br>
        
        <label for="vehicleType">Type of vehicle:</label>
        <select id="vehicleType" name="vechicleType" required>
            <option value="car">Car</option>
            <option value="Innova">Innova</option>
            <option value="Bus">Bus</option>
            <option value="Train">Train</option>
            <option value="Flight">Flight</option>
            <!-- Add more options as needed -->
        </select><br><br>

        <label for="travelPackage">Travel Package:</label>
        <select id="travelPackage" name="travelPackage" onchange="updateEndDate()">
            <option value="3">3 days</option>
            <option value="7">7 days</option>
            <option value="15">15 days</option>
            <option value="30">1 month</option>
            <option value="60">2 months</option>
            <option value="90">3 months</option>
            <!-- Add more options as needed -->
        </select><br><br>

        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate"  name="startDate" required onchange="updateEndDate()"><br><br>


        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate" readonly><br><br>

        <label for="source">Source:</label>
        <input type="text" id="source" name="source" required><br><br>

        <label for="sourceState">Source State:</label>
        <input type="text" id="sourceState" name="soucestate" required><br><br>

        <label for="destination">Destination:</label>
        <input type="text" id="destination" name="destination" required><br><br>

        <label for="destinationState">Destination State:</label>
        <input type="text" id="destinationState" name="destinationstate" required><br><br>
        <input type="submit" class="bp" value="Submit">
    </form>
    <script>
        function updateEndDate() {
            const startDateInput = document.getElementById('startDate');
            const endDateInput = document.getElementById('endDate');
            const travelPackageSelect = document.getElementById('travelPackage');
            const selectedPackage = parseInt(travelPackageSelect.value);
            
            if (!isNaN(selectedPackage) && startDateInput.value !== "") {
                const startDate = new Date(startDateInput.value);
                const endDate = new Date(startDate);
                endDate.setDate(startDate.getDate() + selectedPackage);
                const endDateFormatted = endDate.toISOString().split('T')[0];
                endDateInput.value = endDateFormatted;
            }
        }
        
        // Call the function initially in case there's a default package selected.
        updateEndDate();
    </script>
    </div>
</body>
</html>
