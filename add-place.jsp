<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Place - Smart City Application</title>
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
        <h2>Add Place</h2>
        <form id="add-place-form">
            <div class="input-group">
                <label for="place-name">Place Name:</label>
                <input type="text" id="place-name" name="place-name" required>
            </div>
            <div class="input-group">
                <label for="place-description">Description:</label>
                <input type="text" id="place-description" name="place-description" required>
            </div>
            <div class="input-group">
                <label for="place-location">Location:</label>
                <input type="text" id="place-location" name="place-location" required>
            </div>
            <div class="button-container">
                <button type="submit" class="btn" onclick="addPlace(event)">Add Place</button>
                <button type="button" class="btn view" onclick="viewPlaces()">View Places</button>
                <button type="button" class="btn delete" onclick="deletePlace()">Delete Place</button>
            </div>
        </form>
    </div>

    <script type="text/javascript">
        function addPlace(event) {
            event.preventDefault(); // Prevent the default form submission
            var placeName = document.getElementById("place-name").value;
            var placeDescription = document.getElementById("place-description").value;
            var placeLocation = document.getElementById("place-location").value;

            // Logic to add place information can be implemented here
            alert("Place added: " + placeName + ", Description: " + placeDescription + ", Location: " + placeLocation);
        }

        function viewPlaces() {
            // Logic to view place information can be implemented here
            alert("Displaying all places...");
        }

        function deletePlace() {
            // Logic to delete place information can be implemented here
            alert("Place deleted.");
        }
    </script>
</body>
</html>
