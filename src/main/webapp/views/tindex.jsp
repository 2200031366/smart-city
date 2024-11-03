<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tourist Dashboard</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }
        nav {
            background-color: #007BFF;
            padding: 10px;
            position: scroll; /* Makes the navbar stick at the top */
            top: 0;
            z-index: 1000; /* Ensures navbar stays above other content */
            animation: slideIn 0.5s; /* Navbar animation */
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
            transform: scale(1.1); /* Scale effect on hover */
        }
        .hero {
            height: 60vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column; /* Stack items vertically */
            text-align: center;
            background: url('/tbg.jpg') no-repeat center center/cover;
            background-size: cover; /* Adjust background size */
            color: white;
            animation: fadeIn 2s; /* Hero section fade in */
        }
        .hero h1 {
            font-size: 2.5em;
            animation: fadeInLeft 1s; /* Text animation for h1 */
        }
        .hero p {
            font-size: 1.5em;
            animation: fadeInUp 1s; /* Text animation for p */
            margin-top: 10px; /* Space between the title and paragraph */
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
            <li><a href="/tindex" class="animate__animated animate__fadeIn">Home</a></li>
            <li><a href="/tviewInfo" class="animate__animated animate__fadeIn">View Info</a></li>
            <li><a href="/tlogout" class="animate__animated animate__fadeIn">Logout</a></li>
        </ul>
    </nav>

    <div class="hero animate__animated animate__fadeIn">
        <h1>Welcome, Tourist!</h1>
        <p>Your adventure awaits in our Smart City.</p>
    </div>

    <div class="features">
        <h2>Explore the City</h2>
        <p>Find the best spots, events, and services tailored just for you!</p>
    </div>

</body>
</html>
