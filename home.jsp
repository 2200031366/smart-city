<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Smart City Application</title>
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
            position: relative; /* Added for dropdown positioning */
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
        .hero {
            height: 80vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            background: url('/bg-image.jpg') no-repeat center center/cover; /* Updated path */
            background-size: cover; /* Adjust background size */
            color: white;
            animation: fadeIn 2s; /* Hero section fade in */
        }
        .hero h1 {
            font-size: 3em;
            animation: fadeInUp 1s; /* Text animation */
        }
        .features {
            padding: 50px 20px;
            background-color: white;
            text-align: center;
        }
        .features h2 {
            margin-bottom: 20px;
        }
        .feature-item {
            margin: 20px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: transform 0.3s;
            animation: fadeInUp 1s; /* Fade-in for feature items */
        }
        .feature-item:hover {
            transform: scale(1.05);
        }
        .contact {
            padding: 50px 20px;
            background-color: #f4f4f4;
            text-align: center;
        }
        .contact h2 {
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
            <li><a href="adlogin">Administration</a></li>
        </ul>
    </nav>

    <div class="hero animate__animated animate__fadeIn">
        <h1>Welcome to the Smart City Application</h1>
        <p>Your gateway to efficient city living.</p>
    </div>

    <div class="features">
        <h2>Key Features</h2>
        <div class="feature-item animate__animated animate__fadeInUp">
            <h3>Real-Time Information</h3>
            <p>Access live updates on city services and events.</p>
        </div>
        <div class="feature-item animate__animated animate__fadeInUp">
            <h3>User-Friendly Interface</h3>
            <p>Navigate through city resources effortlessly.</p>
        </div>
        <div class="feature-item animate__animated animate__fadeInUp">
            <h3>Community Engagement</h3>
            <p>Report issues and provide feedback to improve city services.</p>
        </div>
    </div>

    <div class="contact">
        <h2>Contact Us</h2>
        <p>If you have any questions, feel free to <a href="contact" class="btn">Reach Out</a></p>
        <p>Email: support@smartcityapp.com</p>
        <p>Phone: +123 456 7890</p>
    </div>

</body>
</html>
