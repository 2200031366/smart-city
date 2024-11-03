<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Business Dashboard</title>
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
            background-color: #28A745; /* Green color for business */
            padding: 10px;
            position: sticky; /* Keeps the navbar at the top */
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
            background-color: #1e7e34; /* Darker green on hover */
            transform: scale(1.1);
        }
        .hero {
            height: 60vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('/bbg.jpg') no-repeat center center/cover; /* Replace with your business background image */
            filter: blur(5px);
            z-index: 0;
        }
        .hero h1, .hero p {
            position: relative;
            z-index: 1;
            color: white;
        }
        .hero h1 {
            font-size: 2.5em;
            animation: fadeInLeft 1s;
        }
        .hero p {
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
            background-color: #28A745;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #1e7e34;
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
    <%-- Include the business navigation bar --%>
    <jsp:include page="businessNavbar.jsp" />

    <div class="hero animate__animated animate__fadeIn">
        <h1>Welcome to the Business Dashboard</h1>
        <p>Manage and explore business resources efficiently.</p>
    </div>

    <div class="features">
        <h2>Business Management Tools</h2>
        <p>Access insights, analytics, and tools to help grow your business.</p>
    </div>
</body>
</html>
