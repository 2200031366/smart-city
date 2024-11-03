<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Jobseeker Dashboard</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }
        nav {
            background-color: #007BFF;
            padding: 10px;
            position: sticky; /* Sticky navigation for better performance */
            top: 0;
            z-index: 1000;
            animation: slideIn 0.5s;
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
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s;
        }
        nav ul li a:hover {
            background-color: #0056b3;
            transform: scale(1.1);
        }
        .hero {
            height: 60vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            text-align: center;
            position: relative; /* Allows positioning of the pseudo-element */
            overflow: hidden; /* Ensures pseudo-element stays within bounds */
        }
        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('/jsbg.jpg') no-repeat center center/cover;
            filter: blur(5px); /* Adjust blur strength */
            z-index: 0; /* Set behind the content */
        }
        .hero h1 {
            position: relative; /* Keep content above the blurred image */
            z-index: 1;
            color: black; /* Changed to black */
            font-size: 2.5em;
            animation: fadeInLeft 1s;
        }
        .hero p {
            position: relative; /* Keep content above the blurred image */
            z-index: 1;
            color: black;
            font-size: 1.5em;
            animation: fadeInUp 1s;
            margin-top: 10px;
        }
        .features {
            padding: 50px 20px;
            background-color: white;
            text-align: center;
        }
        .features h2 {
            margin-bottom: 20px;
        }
        .btn {
            background-color: #007BFF;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        @keyframes slideIn {
            from {
                transform: translateY(-100%);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body>

    <nav>
        <ul>
            <li><a href="/jsindex" class="animate__animated animate__fadeIn">Home</a></li>
            <li><a href="/jsviewInfo" class="animate__animated animate__fadeIn">View Info</a></li>
            <li><a href="/jslogout" class="animate__animated animate__fadeIn">Logout</a></li>
        </ul>
    </nav>

    <div class="hero animate__animated animate__fadeIn">
        <h1>Welcome, Jobseeker!</h1>
        <p>Your journey to finding the perfect job starts here.</p>
    </div>

    <div class="features">
        <h2>Explore Opportunities</h2>
        <p>Discover the best job openings, resources, and services tailored just for you!</p>
    </div>

</body>
</html>
