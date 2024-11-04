<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Module - Smart City Application</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
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
        .admin-container {
            width: 80%;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s;
        }
        h2 {
            text-align: center;
        }
        .card {
            background-color: #f9f9f9;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 15px;
            margin: 15px 0;
            box-shadow: 0 1px 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }
        .card:hover {
            transform: scale(1.02);
        }
        .btn {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #0056b3;
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

    <div class="admin-container animate__animated animate__fadeIn">
        <h2>Admin Dashboard</h2>
        <div class="card animate__animated animate__fadeInLeft">
            <h3>Add New Place</h3>
            <p>Use the form below to add a new place to the city database.</p>
            <a href="/add-place" class="btn">Add Place</a>
        </div>
        <div class="card animate__animated animate__fadeInRight">
            <h3>View Places</h3>
            <p>View and manage all the places added to the city database.</p>
            <a href="/view-places" class="btn">View Places</a>
        </div>
        <div class="card animate__animated animate__fadeInUp">
            <h3>Manage Users</h3>
            <p>Oversee user accounts and their roles in the application.</p>
            <a href="/users" class="btn">Manage Users</a>
        </div>
        <div class="card animate__animated animate__fadeInUp">
            <h3>View Issues</h3>
            <p>Check reported issues and track their status.</p>
            <a href="/issues" class="btn">View Issues</a>
        </div>
        <div class="card animate__animated animate__fadeInUp">
            <h3>Analytics Dashboard</h3>
            <p>Get insights on user engagement and city metrics.</p>
            <a href="/analytics" class="btn">Analytics</a>
        </div>
    </div>
</body>
</html>
