<%@page import="com.hospital.DTO.Appointment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Schedule</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.21.0/jquery.validate.min.js"></script>
<style type="text/css">
body {
    font-family: Arial, sans-serif;
     background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSJIDOuWTy3ejUoyBPpXYp25w9_9SfQyg99A&usqp=CAU");
        background-position:fixed;
    margin: 0;
    padding: 0;
}

form {
    background: rgba(255, 255, 255, 0.9); 
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
    padding: 20px;
    max-width: 600px;
    margin: 50px auto; 
}

h2 {
    text-align: center;
    color: #000;
    font-size: 1.8em;
    margin-bottom: 20px;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6); /* Increased shadow for better visibility */
}

table {
    width: 100%; /* Full width of the form */
    border-collapse: separate;
    border-spacing: 10px 15px; /* Space between rows and columns */
}

td {
    padding: 10px;
}
 .error {
        color: red;
        font-size: 0.875em;
    }

input[type="text"],
input[type="tel"],
input[type="date"],
select {
    width: 100%; 
    padding: 10px;
    box-sizing: border-box; 
    border: 1px solid #ddd; 
    border-radius: 5px; 
}

input[type="submit"],
button.back {
    background-color: #4CAF50; 
    color: white;
    border: none;
    padding: 15px 30px; 
    text-align: center; 
    text-decoration: none; 
    display: inline-block;
    font-size: 16px; 
    cursor: pointer; 
    border-radius: 5px; 
    transition: background-color 0.3s;
    margin: 20px ; 
}

input[type="submit"]:hover,
button.back:hover {
    background-color: #45a049; 
}


</style>
<script>
    jQuery(document).ready(function($) {
    	$('.container').hide();
    	$('.container').slideDown(2000,function()
    			{
    		console.log("Hello");
    			});
    
        $("#Appointment").validate({
            rules: {
                pid: {
                    required: true
                },
                date: {
                    required: true
                },
               time:{
            	   required: true
               },
               c:{
            	   required: true
               }
            },
            messages: {
                pid: {
                    required: "Please enter the Id"
                },
                date: {
                    required: "Please select the date"
                    
                },
               time: {
            	   required: "Please Enter the timing"
               },
               c:{
            	   required: "Please select the choice"
               }
                
            }
        });
    });
</script>
</head>

<body>
<% Appointment a = (Appointment)request.getAttribute("appointment"); %>
<% String Success =(String)request.getAttribute("success"); %>
<% String failure=(String)request.getAttribute("failure"); %>
<body bgcolor="skyblue">
<% if(Success!=null && a!=null){ %>
<script>
    alert("<%= Success %>");
</script>

<%} %>
<% if(failure!=null){ %>
<script>
    alert("<%= failure %>");
</script>
<%}%>
<div class="container">
<form action="Schedule" id="Appointment" method="post" >
    <h2>Schedule The Appointment</h2>
    <table>
        <tr>
            <td><h3>Enter the Patient ID:</h3></td>
            <td><input type="text" name="pid" required="required"></td>
        </tr>
        <tr>
            <td><h3>Enter the Date of Appointment:</h3></td>
            <td><input type="date" name="date" required="required"></td>
        </tr>
        <tr>
            <td><h3>Enter the Time of Appointment:</h3></td>
            <td><input type="tel" name="time" required="required"></td>
        </tr>
        <tr>
            <td><label for="c" name="c"><h3>Enter the Choice:</h3></label></td>
            <td>
                <select id="c" name="c">
                    <option value="">Select the option</option>
                    <option value="1">AM</option>
                    <option value="2">PM</option>
                </select>
            </td>
        </tr>
        <tr>
  <td colspan="2" class="button-container">
                <input type="submit" value="Schedule">
                <button class="back" type="button" onclick="window.location.href='App.jsp';">Home Page</button>
            </td>
        </tr>
    </table>
</form>
</div>
</body>
</html>