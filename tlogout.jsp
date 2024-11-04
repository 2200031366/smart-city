<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
    <link rel="stylesheet" type="text/css" href="../styles.css"> <!-- Link to your global styles -->
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
            position: sticky; /* Makes the navbar stick at the top */
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
        .container {
            text-align: center;
            padding: 50px 20px;
            background-color: white;
            margin: 20px auto;
            border-radius: 8px;
            width: 80%; /* Adjust the width as needed */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .container h2 {
            margin-bottom: 20px;
            animation: fadeInUp 1s; /* Fade-in for the heading */
        }
        .container p {
            font-size: 1.2em;
            animation: fadeInUp 1s; /* Fade-in for paragraphs */
            margin-top: 10px; /* Space between paragraphs */
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

    <div class="container animate__animated animate__fadeIn">
        <h2>Logout</h2>
        <p>You have successfully logged out.</p>
        <p><a href="/">Return to Home Page</a></p> <!-- Redirect to main home page -->
    </div>

</body>
</html>
