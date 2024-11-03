<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - Smart City Application</title>
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
        .container {
            width: 80%;
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s;
        }
        .app-title {
            text-align: center;
            margin-bottom: 20px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        p {
            line-height: 1.6;
            margin-bottom: 15px;
        }
        .dropdown {
            display: none; /* Initially hide the dropdown */
            position: absolute;
            background-color: #007BFF;
            min-width: 160px;
            z-index: 1;
        }
        nav ul li:hover .dropdown {
            display: block; /* Show dropdown on hover */
        }
        .dropdown a {
            display: block;
            padding: 10px;
            color: white; /* Text color for dropdown links */
            text-decoration: none; /* No underline for dropdown links */
        }
        .dropdown a:hover {
            background-color: #0056b3; /* Hover effect for dropdown links */
        }
    </style>
</head>
<body>

    <nav>
        <ul>
            <li><a href="/">Home</a></li>
            <li>
                 <a href="#" onclick="toggleDropdown(event)">Login</a>
            <div class="dropdown">
                <a href="tlogin">Tourist</a>
                <a href="slogin">Student</a>
                <a href="blogin">Business</a>
                <a href="jslogin">Jobseeker</a>
                </div>
            </li>
            <li><a href="register">Register</a></li>
            <li><a href="about">About</a></li>
            <li><a href="contact">Contact Us</a></li>
            <li><a href="admin">Administration</a></li>
        </ul>
    </nav>

    <div class="container animate__animated animate__fadeIn">
        <h1 class="app-title">Smart City Application</h1>
        <h2>About Us</h2>
        <p>
            Welcome to the Smart City Application! Our mission is to empower citizens by providing easy access to essential city information and services. With our user-friendly interface, residents can seamlessly navigate through various city-related data, report issues, and stay informed about local events.
        </p>
        <p>
            The application is designed to enhance urban living by integrating technology into everyday civic processes. Whether you're looking for public transport schedules, community services, or event notifications, our platform aims to make city life more convenient and connected.
        </p>
        <p>
            Join us in building a smarter, more efficient city for everyone. Your feedback and participation are crucial to our continuous improvement and innovation!
        </p>
    </div>

</body>
</html>
