<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Management</title>
<style type="text/css">
body {
    font-family: 'Open Sans', Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: url("https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdjg3MC10YW5nLTM2XzEuanBn.jpg") no-repeat center center fixed;
    background-size: cover; 
    color: #333;
    overflow: hidden; 
}

.container {
    position: absolute;
    top: 40%; 
    left: 55%;
    transform: translate(-50%, -40%); 
    text-align: center;
    color: #fff; 
    z-index: 1; 
}

.overlay {
    position: fixed; 
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.4); 
    z-index: 0; 
}

h1 {
    font-size: 3em;
    margin: 0 0 40px;
    font-weight: 600;
    font-family: 'Roboto', sans-serif;
    text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.8); 
    letter-spacing: 1px;
    line-height: 1.2;
}

.button {
    display: inline-block;
    background: #4CAF50; 
    color: #fff;
    width: 220px;
    border: none;
    border-radius: 30px; 
    padding: 15px;
    text-align: center;
    font-size: 16px;
    margin: 15px;
    text-decoration: none;
    cursor: pointer;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
    transition: all 0.3s ease;
}

.button:hover {
    background: #388E3C; 
    transform: translateY(-3px); 
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.4);
}

.button:active {
    background: #4CAF50; 
    transform: translateY(1px);s
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
}



</style>
</head>
<body>
    <div class="overlay"></div> <!-- Dark overlay for improved text visibility -->
    <div class="container">
        <h1>Welcome to Hospital Management System</h1>
        <a href="Register.jsp" class="button">Register Patient</a>
        <a href="Schedule.jsp" class="button">Schedule Appointment</a>
        <a href="PatientList.jsp" class="button">Patient List</a>
        <a href="DoctorList.jsp" class="button">Doctor List</a>
        <a href="AppointmentList.jsp" class="button">Appointment List</a>
        <a href="Bill.jsp" class="button">Generate Bill</a>
    </div>
</body>
</html>