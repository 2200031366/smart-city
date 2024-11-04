<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Module - View Info</title>
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
        table {
            width: 100%;
            border-collapse: collapse; /* Collapses table borders */
            margin-top: 20px; /* Adds space above the table */
        }
        th, td {
            border: 1px solid #ddd; /* Border for table cells */
            padding: 10px; /* Padding within cells */
            text-align: left; /* Aligns text to the left */
        }
        th {
            background-color: #007BFF; /* Header background color */
            color: white; /* Header text color */
        }
        tr:hover {
            background-color: #f1f1f1; /* Row hover effect */
        }
        img {
            width: 100px; /* Fixed width for images */
            height: auto; /* Maintain aspect ratio */
            border-radius: 5px; /* Rounded corners for images */
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
    <%-- Include the student navigation bar --%>
    <jsp:include page="studentNavbar.jsp" />

    <div class="container animate__animated animate__fadeIn">
        <h2>Student Information</h2>
        <p>Here you can find information about students, their courses, and activities.</p>

        <table>
            <thead>
                <tr>
                    <th>Image</th> <!-- Added Image column -->
                    <th>Name</th>
                    <th>Course</th>
                    <th>Year</th>
                    <th>Contact</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><img src="https://via.placeholder.com/100" alt="Student 1" /></td> <!-- Placeholder image -->
                    <td>John Doe</td>
                    <td>Computer Science</td>
                    <td>3rd Year</td>
                    <td>john@example.com</td>
                </tr>
                <tr>
                    <td><img src="https://via.placeholder.com/100" alt="Student 2" /></td> <!-- Placeholder image -->
                    <td>Jane Smith</td>
                    <td>Data Science</td>
                    <td>2nd Year</td>
                    <td>jane@example.com</td>
                </tr>
                <tr>
                    <td><img src="https://via.placeholder.com/100" alt="Student 3" /></td> <!-- Placeholder image -->
                    <td>Michael Brown</td>
                    <td>Software Engineering</td>
                    <td>4th Year</td>
                    <td>michael@example.com</td>
                </tr>
                <tr>
                    <td><img src="https://via.placeholder.com/100" alt="Student 4" /></td> <!-- Placeholder image -->
                    <td>Emily Davis</td>
                    <td>Information Technology</td>
                    <td>3rd Year</td>
                    <td>emily@example.com</td>
                </tr>
                <tr>
                    <td><img src="https://via.placeholder.com/100" alt="Student 5" /></td> <!-- Placeholder image -->
                    <td>David Wilson</td>
                    <td>Cybersecurity</td>
                    <td>2nd Year</td>
                    <td>david@example.com</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
