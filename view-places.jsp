<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Places - Smart City Application</title>
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
            border: 1px solid #ddd;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .btn-delete {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .btn-delete:hover {
            background-color: #c82333;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
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
        <h2>View Places</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Location</th>
                    <th>Description</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Central Park</td>
                    <td>Downtown</td>
                    <td>A large public park in the city center.</td>
                    <td><button class="btn-delete" onclick="deletePlace(1)">Delete</button></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>City Museum</td>
                    <td>Main Street</td>
                    <td>A museum showcasing the history of the city.</td>
                    <td><button class="btn-delete" onclick="deletePlace(2)">Delete</button></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Art Gallery</td>
                    <td>Arts District</td>
                    <td>A gallery featuring local artists.</td>
                    <td><button class="btn-delete" onclick="deletePlace(3)">Delete</button></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Community Center</td>
                    <td>East Side</td>
                    <td>A center for community events and activities.</td>
                    <td><button class="btn-delete" onclick="deletePlace(4)">Delete</button></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>City Library</td>
                    <td>West Side</td>
                    <td>A public library offering books and resources.</td>
                    <td><button class="btn-delete" onclick="deletePlace(5)">Delete</button></td>
                </tr>
            </tbody>
        </table>
    </div>

    <script>
        function deletePlace(id) {
            // Here, implement the logic to delete the place with the given ID.
            // This can be an AJAX call to your backend to delete the entry from the database.
            alert("Place with ID " + id + " will be deleted.");
        }
    </script>
</body>
</html>
