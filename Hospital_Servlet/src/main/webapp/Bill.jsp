<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.hospital.DAO.AppointmentDAO"%>
<%@ page import="com.hospital.DAO.AppointmentDAOImp"%>
<%@ page import="com.hospital.DTO.Appointment"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill</title>
<style type="text/css">
   body {
    font-family: Arial, sans-serif;
     background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSJIDOuWTy3ejUoyBPpXYp25w9_9SfQyg99A&usqp=CAU");
        background-position:fixed;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

form {
    background: rgba(255, 255, 255, 0.95); 
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2); 
    width: 300px;
    text-align: center;
}

h3 {
    color: #333; 
    margin-bottom: 15px; 
    font-size: 1.1em; 
    font-weight: 500; 
}

input[type="text"] {
    width: calc(100% - 22px); 
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-sizing: border-box; 
    font-size: 16px;
}

button {
    background-color: #4CAF50; 
    color: white;
    border: none; 
    padding: 10px 15px;
    text-align: center;
    text-decoration: none; 
    display: inline-block; 
    font-size: 16px; 
    margin: 10px 5px; 
    cursor: pointer; 
    border-radius: 8px; 
    transition: background-color 0.3s ease, transform 0.3s ease;
    width: auto;
}

button.submit {
    background-color: #4CAF50; 
}

button.submit:hover {
    background-color: #45a049; 
    transform: scale(1.05); 
}

button.back {
    background-color: #4CAF50;
    color: white; 
}

button.back:hover {
    background-color: #45a049; 
    transform: scale(1.05); 
}

button a {
    color: inherit; 
    text-decoration: none; 
    display: block; 
}



</style>
</head>
<body>
    <form action="Bill" method="post">
        <table>
            <tr>
                <td><h3>Enter the Appointment ID:</h3></td>
                <td><input type="text" name="pid" required="required"></td>
            </tr>
        </table>
        <button class="submit" type="submit">Show Bill</button>
        <button class="back" type="button" onclick="window.location.href='App.jsp';">Home Page</button>
    </form>
</body>

</html>