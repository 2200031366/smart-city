<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Business Module - View Info</title>
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
        img {
            width: 100px; /* Image width */
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
    <%-- Include the business navigation bar --%>
    <jsp:include page="businessNavbar.jsp" />

    <div class="container animate__animated animate__fadeIn">
        <h2>Business Information</h2>
        <p>Here you can find all the details related to businesses, partners, and commercial opportunities.</p>
        
        <table>
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Business Name</th>
                    <th>Description</th>
                    <th>Contact</th>
                </tr>
            </thead>
            <tbody>
                <%-- Sample row for demonstration; replace with dynamic content as needed --%>
                <tr>
                    <td><img src="/images/business1.jpg" alt="Business 1"></td>
                    <td>Business A</td>
                    <td>A brief description of Business A's services and specialties.</td>
                    <td>contact@businessa.com</td>
                </tr>
                <tr>
                    <td><img src="/images/business2.jpg" alt="Business 2"></td>
                    <td>Business B</td>
                    <td>A brief description of Business B's offerings and history.</td>
                    <td>contact@businessb.com</td>
                </tr>
                <%-- Add more rows or use a loop to generate rows dynamically --%>
            </tbody>
        </table>
    </div>
</body>
</html>
