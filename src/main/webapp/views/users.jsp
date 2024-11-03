<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Users Place - Smart City Application</title>
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
            width: 80%;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            transition: background-color 0.3s;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .btn {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }
        .btn:hover {
            background-color: #c82333;
            transform: scale(1.05);
        }
        .fade-in {
            animation: fadeIn 1s ease-in;
        }
        .slide-in {
            animation: slideIn 0.5s ease-in-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        @keyframes slideIn {
            from { transform: translateY(-20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
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

    <div class="container fade-in">
        <h2>Manage Users Place</h2>
        <table>
            <thead>
                <tr>
                    <th>Place Name</th>
                    <th>Description</th>
                    <th>Location</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr class="slide-in">
                    <td>Central Park</td>
                    <td>A large public park in New York City.</td>
                    <td>New York, NY</td>
                    <td><button class="btn" onclick="deletePlace(this)">Delete</button></td>
                </tr>
                <tr class="slide-in">
                    <td>Eiffel Tower</td>
                    <td>An iron lattice tower in Paris, France.</td>
                    <td>Paris, France</td>
                    <td><button class="btn" onclick="deletePlace(this)">Delete</button></td>
                </tr>
                <tr class="slide-in">
                    <td>Taj Mahal</td>
                    <td>A white marble mausoleum in Agra, India.</td>
                    <td>Agra, India</td>
                    <td><button class="btn" onclick="deletePlace(this)">Delete</button></td>
                </tr>
                <tr class="slide-in">
                    <td>Sydney Opera House</td>
                    <td>A multi-venue performing arts center in Sydney, Australia.</td>
                    <td>Sydney, Australia</td>
                    <td><button class="btn" onclick="deletePlace(this)">Delete</button></td>
                </tr>
                <tr class="slide-in">
                    <td>Great Wall of China</td>
                    <td>A series of fortifications made of various materials.</td>
                    <td>China</td>
                    <td><button class="btn" onclick="deletePlace(this)">Delete</button></td>
                </tr>
                <tr class="slide-in">
                    <td>Colosseum</td>
                    <td>A large amphitheater located in the center of Rome, Italy.</td>
                    <td>Rome, Italy</td>
                    <td><button class="btn" onclick="deletePlace(this)">Delete</button></td>
                </tr>
                <tr class="slide-in">
                    <td>Statue of Liberty</td>
                    <td>A symbol of freedom and democracy located in New York City.</td>
                    <td>New York, NY</td>
                    <td><button class="btn" onclick="deletePlace(this)">Delete</button></td>
                </tr>
                <tr class="slide-in">
                    <td>Burj Khalifa</td>
                    <td>The tallest building in the world located in Dubai, UAE.</td>
                    <td>Dubai, UAE</td>
                    <td><button class="btn" onclick="deletePlace(this)">Delete</button></td>
                </tr>
                <tr class="slide-in">
                    <td>Machu Picchu</td>
                    <td>An Incan citadel set high in the Andes Mountains.</td>
                    <td>Peru</td>
                    <td><button class="btn" onclick="deletePlace(this)">Delete</button></td>
                </tr>
            </tbody>
        </table>
    </div>

    <script type="text/javascript">
        function deletePlace(button) {
            // Confirm deletion
            if (confirm("Are you sure you want to delete this place?")) {
                // Remove the row from the table
                var row = button.parentElement.parentElement;
                row.parentElement.removeChild(row);
            }
        }
    </script>
</body>
</html>
