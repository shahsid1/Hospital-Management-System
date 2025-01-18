<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.List" %>
 <%@ page import="com.hospital.DAO.AppointmentDAO" %>
 <%@ page import="com.hospital.DAO.AppointmentDAOImp" %>
 <%@ page import ="com.hospital.DTO.Appointment" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment List</title>
<style>
      body {
        font-family: Arial, sans-serif;
         background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSJIDOuWTy3ejUoyBPpXYp25w9_9SfQyg99A&usqp=CAU");
        background-position:fixed;
        background-size: cover;
        margin: 0;
        padding: 0;
    }
    h1 {
        text-align: center;
        color: #fff;
        margin: 50px auto;
        font-size: 3em;
        font-weight: 700;
        text-shadow: 4px 4px 8px rgba(0, 0, 0, 0.4);
        letter-spacing: 1.5px;
        background: linear-gradient(135deg, #4CAF50, #45a049);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        padding: 20px 0;
        border-radius: 10px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.5);
        text-transform: uppercase;
    }
    table {
        width: 80%;
        margin: 50px auto;
        border-collapse: collapse;
        background-color: rgba(255, 255, 255, 0.95);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        border-radius: 12px;
        overflow: hidden;
        animation: fadeIn 1s ease-in-out;
    }
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
    th {
        background: linear-gradient(135deg, #4CAF50, #45a049);
        color: #fff;
        font-size: 1.2em;
        font-weight: 600;
        padding: 15px;
        text-align: center;
        border-bottom: 2px solid #3e8e41;
    }
    td {
        background-color: #f9f9f9;
        border-bottom: 1px solid #ddd;
        padding: 15px;
    }
    th, td {
        text-align: left;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #e0f7fa;
        transition: background-color 0.3s ease;
    }
    .button-container {
        display: flex;
        justify-content: center;
        gap: 10px;
        margin-top: 20px; 
    }
    .button-container button {
        background-color: #4CAF50; 
        color: white; 
        border: none; 
        padding: 12px 24px; 
        text-align: center;
        text-decoration: none;
        display: inline-block; 
        font-size: 16px; 
        margin: 4px 2px;
        cursor: pointer; 
        border-radius: 5px;
        transition: background-color 0.3s ease, box-shadow 0.3s ease; 
    }
    .button-container button.back {
        background-color: #e0e0e0; 
        color: #333;
    }
    .button-container button.back:hover {
        background-color: #c0c0c0; 
        color: #000; 
    }
    
</style>
</head>
<body>
    <h1>Appointment List</h1>
    <table border="1">
        <tr>
            <th>Appointment ID</th>
            <th>Amount</th>
            <th>Patient</th>
            <th>Doctor</th>
            <th>Date</th>
            <th>Time</th>
            <th>Choice</th>
        </tr>
        <% AppointmentDAO<Appointment> adao = new AppointmentDAOImp();
           List<Appointment> a = adao.appointmentlist();
           if (a != null) {
               for (Appointment app : a) {
        %>
        <tr>
            <td><%= app.getAppointmentid() %></td>
            <td><%= app.getAmount() %></td>
            <td><%= app.getPatient() %></td>
            <td><%= app.getDoctor() %></td>
            <td><%= app.getDate() %></td>
            <td><%= app.getTime() %></td>
            <td><%= app.getCh() %></td>
        </tr>
        <% } 
           } else { 
        %>
        <tr>
            <td colspan="7">No Appointments found</td>
        </tr>
        <% } %>
    </table>
     <div class="button-container">
        <button type="button" onclick="window.location.href='App.jsp';">Back to Main Page</button>
        </div>
</body>
</html>