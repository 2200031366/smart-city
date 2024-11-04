<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage City Info - Smart City Application</title>
    <link rel="stylesheet" type="text/css" href="../styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        nav {
            background-color: #007BFF;
            padding: 10px;
        }
        nav ul {
            list-style: none;
            padding: 0;
            display: flex;
            justify-content: center;
        }
        nav ul li {
            margin: 0 15px;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        nav ul li a:hover {
            background-color: #0056b3;
        }
        .container {
            width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s;
        }
        .input-group {
            margin-bottom: 15px;
            opacity: 0; /* Start hidden for animation */
            transform: translateY(20px); /* Move down for animation */
            animation: fadeInUp 0.5s forwards; /* Animate the input groups */
        }
        .input-group:nth-child(1) { animation-delay: 0.1s; }
        .input-group:nth-child(2) { animation-delay: 0.2s; }
        .input-group:nth-child(3) { animation-delay: 0.3s; }

        .input-group label {
            display: block;
            margin-bottom: 5px;
        }
        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            width: 30%;
            margin-right: 5%;
            transition: background-color 0.3s, transform 0.2s;
            display: inline-block;
        }
        .btn:hover {
            background-color: #0056b3;
            transform: scale(1.05); /* Scale effect on hover */
        }
        .btn.delete {
            background-color: #dc3545;
            margin-right: 0; /* Remove right margin for delete button */
        }
        .btn.delete:hover {
            background-color: #c82333;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 10px; /* Add spacing between inputs and buttons */
        }
    </style>
</head>
<body>

    <nav>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/users">Manage Users</a></li>
            <li><a href="/city-info">Manage City Info</a></li>
            <li><a href="/issues">View Issues</a></li>
            <li><a href="/analytics">Analytics</a></li>
            <li><a href="/add-place">Add Place</a></li>
            <li><a href="/view-places">View Places</a></li>
            <li><a href="/adlogout">Logout</a></li>
        </ul>
    </nav>

    <div class="container animate__animated animate__fadeIn">
        <h2>Manage City Info</h2>
        <form id="city-info-form">
            <div class="input-group">
                <label for="city-name">City Name:</label>
                <input type="text" id="city-name" name="city-name" required>
            </div>
            <div class="input-group">
                <label for="city-population">Population:</label>
                <input type="number" id="city-population" name="city-population" required>
            </div>
            <div class="input-group">
                <label for="city-description">Description:</label>
                <input type="text" id="city-description" name="city-description" required>
            </div>
            <div class="button-container">
                <button type="submit" class="btn" onclick="addCity(event)">Add City</button>
                <button type="button" class="btn view" onclick="viewCities()">View Cities</button>
                <button type="button" class="btn delete" onclick="deleteCity()">Delete City</button>
            </div>
        </form>
    </div>

    <script type="text/javascript">
        function addCity(event) {
            event.preventDefault(); // Prevent the default form submission
            var cityName = document.getElementById("city-name").value;
            var cityPopulation = document.getElementById("city-population").value;
            var cityDescription = document.getElementById("city-description").value;

            // Logic to add city information can be implemented here
            alert("City added: " + cityName + ", Population: " + cityPopulation + ", Description: " + cityDescription);
        }

        function viewCities() {
            // Logic to view city information can be implemented here
            alert("Displaying all cities...");
        }

        function deleteCity() {
            // Logic to delete city information can be implemented here
            alert("City deleted.");
        }
    </script>
</body>
</html>
