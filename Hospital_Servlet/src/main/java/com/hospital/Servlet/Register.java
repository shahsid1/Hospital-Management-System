package com.hospital.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.hospital.DAO.PatientDAO;
import com.hospital.DAO.PatientDAOImp;
import com.hospital.DTO.Patient;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/Register")

public class Register extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
   

	String pname=req.getParameter("name");
	String contactno=req.getParameter("phno");
	String mh1=req.getParameter("mh");
	
	
	   int ch = Integer.parseInt(mh1);
	  
//       try {
//           
//       } catch (NumberFormatException e) {
//           resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid input");
//           return;
//       }

       // Initialize variables
       String h = "";
       String dname = "";
       int amount = 0;

       // Determine the medical history and corresponding values
       switch (ch) {
           case 1:
               h = "Cardiologist";
               dname = "John";
               amount = 2000;
               break;
           case 2:
               h = "Dermatologist";
               dname = "Vishwas";
               amount = 2500;
               break;
           case 3:
               h = "Diabetologist";
               dname = "Suhas";
               amount = 1800;
               break;
           case 4:
               h = "Gynecologist";
               dname = "Raj";
               amount = 4000;
               break;
           case 5:
               h = "Neurologist";
               dname = "Suchin";
               amount = 3000;
               break;
           case 6:
               h = "Dietitian";
               dname = "Shilpa";
               amount = 1500;
               break;
           case 7:
               h = "Physiotherapist";
               dname = "Siddharth";
               amount = 5000;
               break;
         
       }

	
	Patient p=new Patient();
	PatientDAO<Patient> pdao=new PatientDAOImp();
	

	PrintWriter out=resp.getWriter();
	p.setPname(pname);
	p.setContact(contactno);
	p.setMedicalhistory(h);
	p.setDname(dname);

	p.setAmount(amount);
	
	boolean res=pdao.register(p);
	 // Set content type to HTML
    resp.setContentType("text/html");


    if (res) {
		req.setAttribute("patient", p);
		req.setAttribute("success", "Registration Successfull");
		RequestDispatcher rd=req.getRequestDispatcher("Register.jsp");
		rd.forward(req,resp);
	} else {
		req.setAttribute("patient", p);
		req.setAttribute("failure", "Registration Failed");
		RequestDispatcher rd=req.getRequestDispatcher("Register.jsp");
		rd.forward(req,resp);
	}
}
}

