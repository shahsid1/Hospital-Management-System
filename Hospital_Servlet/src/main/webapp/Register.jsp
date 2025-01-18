<%@page import="com.hospital.DTO.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.21.0/jquery.validate.min.js"></script>
<style>
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
    color: #333; 
    margin: 0 0 20px; 
    text-align: center;
    font-size: 1.8em;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6); 
}

h3 {
    color: #333;
    font-size: 1.2em; 
    margin: 15px 0; 
    font-weight: 400;
    text-align: left;
    border-bottom: 2px solid #ddd; 
    padding-bottom: 5px; 
    line-height: 1.4; 
}

table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0 10px;
}

td {
    padding: 10px;
    vertical-align: middle;
}
 .error {
        color: red;
        font-size: 0.875em;
    }

input[type="text"],
input[type="tel"],
select {
    width: calc(100% - 20px); 
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
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
    border-radius: 4px;
    transition: background-color 0.3s ease, transform 0.2s ease;
    margin: 10px; 
}

input[type="submit"]:hover,
button.back:hover {
    background-color: #45a049; 
    transform: scale(1.05);
}

input[type="submit"]:active,
button.back:active {
    background-color: #388e3c; 
    transform: scale(0.98);
}

button.back {
    background-color: #4CAF50; 
    color: white; 
}

button.back:hover {
    background-color: #45a049; 
}

button.back:active {
    background-color: #388e3c; 
}



</style>
<script>
    jQuery(document).ready(function($) {
    	$('.container').hide();
    	$('.container').slideDown(2000,function()
    			{
    		console.log("Hello");
    			});
    
        $("#register").validate({
            rules: {
                name: {
                    required: true
                },
                phone: {
                    required: true,
                    minlength: 10,
                    maxlength: 10,
                    digits: true
                },
               mh:{
            	   required: true
               }
            },
            messages: {
                name: {
                    required: "Please enter your name"
                },
                phone: {
                    required: "Please enter your phone number",
                    minlength: "Your phone number must be exactly 10 digits",
                    maxlength: "Your phone number must be exactly 10 digits",
                    digits: "Please enter a valid phone number"
                },
               mh: {
            	   required: "Please Enter the Patient Condition"
               }
            }
        });
    });
</script>
</head>
<% Patient p = (Patient)request.getAttribute("patient"); %>
<% String Success =(String)request.getAttribute("success"); %>
<% String failure=(String)request.getAttribute("failure"); %>

<body>
<% if(Success!=null && p!=null){ %>
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
<form action="Register" id="register" method="post" >

<h2>Registration Form</h2>
<table>

<tr>
<td><h3>Enter your Name:</h3></td>
<td><input type="text" name="name" required="required"></td>
</tr>

<tr>
<td><h3>Enter your Contact number:</h3></td>
<td><input type="tel" name="phno" required="required"></td>
</tr>

  <tr>
            <td><label name="mh" for="mh"><h3>Enter your Medical History:</h3></label></td>
            <td>
                <select id="mh" name="mh">
                    <option value="">Select your condition</option>
                    <option value="1">Heart Pain</option>
                    <option value="2">Skin, Hair or Nail disorder</option>
                    <option value="3">Diabetes</option>
                    <option value="4">Women's Health issue</option>
                    <option value="5">Neuro Disorder</option>
                    <option value="6">Health issue regarding food</option>
                    <option value="7">Any physical body pain</option>
                </select>
            </td>
        </tr>

<tr>
  <td colspan="2" class="button-container">
                <input type="submit" value="Register">
                <button class="back" type="button" onclick="window.location.href='App.jsp';">Home Page</button>
            </td>
</tr>

</table>

</form>
</div>
</body>
</html>
