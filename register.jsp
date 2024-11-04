<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register - Smart City Application</title>
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
        .register-container {
            width: 300px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s;
        }
        .input-group {
            margin-bottom: 15px;
        }
        .input-group label {
            display: block;
            margin-bottom: 5px;
        }
        .input-group input, .input-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
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
        .login-link {
            text-align: center;
            margin-top: 15px;
        }
        .alert {
            display: none; /* Initially hide the alert */
            padding: 15px;
            background-color: #4CAF50; /* Green */
            color: white;
            text-align: center;
            position: relative;
            margin-bottom: 20px;
            border-radius: 5px;
            animation: fadeIn 0.5s, fadeOut 0.5s 2.5s; /* Animation for fade in and out */
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
        @keyframes fadeOut {
            from { opacity: 1; }
            to { opacity: 0; }
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

    <div class="register-container animate__animated animate__fadeIn">
        <div id="alert" class="alert">Registration successful!</div>
        <h2>Register</h2>
        <form onsubmit="return handleRegistration(event)">
            <div class="input-group">
                <label for="role">Select Role:</label>
                <select id="role" name="role" required>
                    <option value="" disabled selected>Select your role</option>
                    <option value="tourist">Tourist</option>
                    <option value="student">Student</option>
                    <option value="business">Business</option>
                    <option value="jobseeker">Jobseeker</option>
                </select>
            </div>
            <div class="input-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="input-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <button type="submit" class="btn">Register</button>
            <p class="login-link">Already have an account? <a href="/">Login</a></p>
        </form>
    </div>

    <script type="text/javascript">
        function handleRegistration(event) {
            event.preventDefault(); // Prevent form submission

            // Retrieve form values if needed (not necessary for redirection)
            const role = document.getElementById('role').value;
            const username = document.getElementById('username').value;
            const email = document.getElementById('email').value;

            console.log("Registered with Role:", role, "Username:", username, "Email:", email);

            // Show the alert message
            const alertBox = document.getElementById('alert');
            alertBox.style.display = 'block'; // Show the alert
            alertBox.classList.add('animate__fadeIn'); // Add fade in animation

            // Hide the alert after 3 seconds
            setTimeout(() => {
                alertBox.style.display = 'none'; // Hide the alert
            }, 3000);

            // Redirect to the home page after 3 seconds (optional)
            setTimeout(() => {
                window.location.href = '/';
            }, 3000);

            return false; // Optional: stop further handling
        }
    </script>
</body>
</html>
