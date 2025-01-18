package com.hospital.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.hospital.DAO.AppointmentDAO;
import com.hospital.DAO.AppointmentDAOImp;
import com.hospital.DAO.PatientDAO;
import com.hospital.DAO.PatientDAOImp;
import com.hospital.DTO.Appointment;
import com.hospital.DTO.Patient;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/Schedule")
public class ScheduleAppointment extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	
	String pid=req.getParameter("pid");
	String date=req.getParameter("date");
	String time=req.getParameter("time");
	String choice=req.getParameter("c");
	

	int pid1=Integer.parseInt(pid);
	int ch=Integer.parseInt(choice);
	
	 String h = "";
	if(ch==1)
	{
		h="AM";
	}
	else
	{
		h="PM";
	}

	 AppointmentDAO<Appointment> appdao = new AppointmentDAOImp();
	 Appointment a=new Appointment();
	    PatientDAO<Patient> pdao=new PatientDAOImp();
		List<Patient> p=pdao.getPatient();
		

		PrintWriter out=resp.getWriter();
		
		Patient selectedPatient = null;

	    for (Patient patient : p) {
	        if (patient.getId() == pid1) {
	            selectedPatient = patient;
	            break;
	        }
	    }
	    
	    if (selectedPatient == null) {
	        System.out.println("Patient not found. Please register the patient before scheduling an appointment.");
	        return;
	    }

	    String doctorName = selectedPatient.getDname();
	    String patientName = selectedPatient.getPname();
	    int amount = selectedPatient.getAmount();

	    // Check if doctorName is null or empty
	    if (doctorName == null || doctorName.isEmpty()) {
	        System.out.println("Doctor's name cannot be null or empty.");
	        return;
	    }
	    a.setAmount(amount);
	    a.setDoctor(doctorName);
	    a.setPatient(patientName);
	    a.setDate(date);
	    a.setTime(time);
	    a.setCh(h);
	    
	    boolean res=appdao.scheduleappointment(a);
	   

	    if (res) {

			req.setAttribute("appointment", a);
			req.setAttribute("success", "Scheduled appointment Successfully");
			RequestDispatcher rd=req.getRequestDispatcher("Schedule.jsp");
			rd.forward(req,resp);
		} else {

			req.setAttribute("appointment", a);
			req.setAttribute("failure",  "Failed to schedule");
			RequestDispatcher rd=req.getRequestDispatcher("Schedule.jsp");
			rd.forward(req,resp);
		}
}
}
