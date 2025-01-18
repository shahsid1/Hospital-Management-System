<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.List" %>
 <%@ page import="com.hospital.DAO.PatientDAO" %>
 <%@ page import="com.hospital.DAO.PatientDAOImp" %>
 <%@ page import ="com.hospital.DTO.Patient" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient List</title>
<style>
    body {
    font-family: Arial, sans-serif;
     background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSJIDOuWTy3ejUoyBPpXYp25w9_9SfQyg99A&usqp=CAU");
        background-position:fixed;
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
    display: block; 
    margin: 20px auto; 
}


</style>
</head>
<body>
 <h1>Patient List</h1>
 <table border="1">
 
 <tr>
   <th>Patient Name</th>
   <th>Contact</th>
   <th>Medical History</th>
   <th>Doctor Name</th>
   <th>Patient ID</th>
   <th>Amount</th>
 </tr>
 <% PatientDAO<Patient> pdao=new PatientDAOImp();
	List<Patient> p=pdao.getPatient();
	if(p!=null){
		for(Patient patient:p){
	%>
    <tr>
       <td><%= patient.getPname() %></td>
        <td><%= patient.getContact() %></td>
         <td><%= patient.getMedicalhistory() %></td>
          <td><%= patient.getDname() %></td>
           <td><%= patient.getId() %></td>
            <td><%= patient.getAmount() %></td>
    </tr>
    <%} 
    }
    else{
    %>
    <tr>
    <td colspan="6">No Patient found</td>
    </tr>
    <%} %>
 </table>
  <button class="back" type="button" onclick="window.location.href='App.jsp';">Home Page</button>
</body>
</html>