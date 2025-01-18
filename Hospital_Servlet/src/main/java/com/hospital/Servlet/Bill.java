package com.hospital.Servlet;

import java.io.IOException;
import java.util.List;

import com.hospital.DAO.AppointmentDAO;
import com.hospital.DAO.AppointmentDAOImp;
import com.hospital.DTO.Appointment;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/Bill")
public class Bill extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
	String Appointmentid=req.getParameter("pid");
	int appid=Integer.parseInt(Appointmentid);
	
	   AppointmentDAO<Appointment> adao = new AppointmentDAOImp();
       List<Appointment> appointments = adao.appointmentlist();

       int serviceCharge = 0;
       int doctorCharge = 500; // Fixed doctor's charge
       boolean found = false;

       for (Appointment appointment : appointments) {
           if (appointment.getAppointmentid() == appid) {
               serviceCharge = appointment.getAmount();
               found = true;
               break;
           }
       }

       if (found) {
           double totalCost = serviceCharge + doctorCharge;
           double gst = 0.18 * totalCost;
           double finalAmount = totalCost + gst;

           req.setAttribute("patient", appointments.stream().filter(a -> a.getAppointmentid() == appid).findFirst().get().getPatient());
           req.setAttribute("serviceCharge", serviceCharge);
           req.setAttribute("doctorCharge", doctorCharge);
           req.setAttribute("totalCost", totalCost);
           req.setAttribute("gst", gst);
           req.setAttribute("finalAmount", finalAmount);

           req.getRequestDispatcher("/DisplayBill.jsp").forward(req, resp);
       } else {
           req.setAttribute("errorMessage", "Patient/Doctor not found");
           req.getRequestDispatcher("/DisplayBill.jsp").forward(req, resp);
       }
   } catch (NumberFormatException e) {
       req.setAttribute("errorMessage", "Invalid Appointment ID");
       req.getRequestDispatcher("/DisplayBill.jsp").forward(req, resp);
}
}
}
