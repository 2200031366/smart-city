<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us - Smart City Application</title>
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
            position: sticky;
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
            position: relative;
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
        .dropdown {
            display: none;
            position: absolute;
            background-color: #007BFF;
            min-width: 160px;
            z-index: 1;
        }
        nav ul li:hover .dropdown {
            display: block;
        }
        .dropdown a {
            display: block;
            padding: 10px;
            color: white;
            text-decoration: none;
        }
        .dropdown a:hover {
            background-color: #0056b3;
        }
        .contact {
            padding: 50px 20px;
            background-color: white;
            margin: 20px auto;
            border-radius: 8px;
            width: 80%;
            max-width: 800px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            animation: fadeInUp 1s;
        }
        .contact h2 {
            color: #007BFF;
            margin-bottom: 20px;
        }
        .input-group {
            margin-bottom: 15px;
        }
        .input-group label {
            display: block;
            margin-bottom: 5px;
        }
        .input-group input,
        .input-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        footer {
            text-align: center;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
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
        @keyframes fadeInUp {
            from {
                transform: translateY(30px);
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

    <section class="contact animate__animated animate__fadeIn">
        <h2>Contact Us</h2>
        <p>If you have any questions, feedback, or concerns, please reach out to us:</p>
        <form action="submitContact" method="post">
            <div class="input-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="input-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn">Send Message</button>
        </form>
        <p>Email: support@smartcityapp.com</p>
        <p>Phone: +123 456 7890</p>
    </section>

    <footer>
        <p>© 2024 Smart City Application. All rights reserved.</p>
    </footer>
</body>
</html>
