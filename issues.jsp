<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Issues - Smart City Application</title>
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
            background-color: #28a745;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }
        .btn:hover {
            background-color: #218838;
            transform: scale(1.05);
        }
        .fade-in {
            animation: fadeIn 1s ease-in;
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

    <div class="container fade-in">
        <h2>View Issues</h2>
        <table>
            <thead>
                <tr>
                    <th>Issue ID</th>
                    <th>Description</th>
                    <th>Location</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Street light not working</td>
                    <td>Main Street</td>
                    <td>Pending</td>
                    <td><button class="btn" onclick="completeIssue(this)">Complete</button></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Pothole on road</td>
                    <td>Second Avenue</td>
                    <td>Pending</td>
                    <td><button class="btn" onclick="completeIssue(this)">Complete</button></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Overflowing garbage bin</td>
                    <td>Pine Road</td>
                    <td>Pending</td>
                    <td><button class="btn" onclick="completeIssue(this)">Complete</button></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Broken sidewalk</td>
                    <td>Elm Street</td>
                    <td>Pending</td>
                    <td><button class="btn" onclick="completeIssue(this)">Complete</button></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Missing street sign</td>
                    <td>Maple Avenue</td>
                    <td>Pending</td>
                    <td><button class="btn" onclick="completeIssue(this)">Complete</button></td>
                </tr>
            </tbody>
        </table>
    </div>

    <script type="text/javascript">
        function completeIssue(button) {
            // Confirm completion of the issue
            if (confirm("Are you sure you want to mark this issue as complete?")) {
                // Update the issue status and change the button
                var row = button.parentElement.parentElement;
                row.cells[3].innerText = "Completed";
                button.disabled = true;
                button.innerText = "Completed";
                button.style.backgroundColor = "#6c757d"; // Change button color to grey
                button.style.cursor = "not-allowed"; // Change cursor to not-allowed
            }
        }
    </script>
</body>
</html>
