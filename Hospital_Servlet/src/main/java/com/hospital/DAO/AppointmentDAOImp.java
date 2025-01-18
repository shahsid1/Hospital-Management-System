package com.hospital.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.bank.Connector.Connector1;
import com.hospital.DTO.Appointment;
import com.hospital.DTO.Doctor;
import com.hospital.DTO.Patient;

public class AppointmentDAOImp implements AppointmentDAO<Appointment>{
private Connection con;
	
	public AppointmentDAOImp() {
		this.con=Connector1.requestConnection();
	}

	@Override
	public boolean scheduleappointment(Appointment a) {
		PreparedStatement ps=null;
		String query="INSERT INTO APPOINTMENT(APPOINTMENTID,AMOUNT,DOCTOR,PATIENT,DATE,TIME,CHOICE) VALUES(?,?,?,?,?,?,?)";
		try {
			ps=con.prepareStatement(query);

			ps.setInt(1, a.getAppointmentid());
			ps.setDouble(2,a.getAmount());
			ps.setString(3, a.getDoctor());
			ps.setString(4, a.getPatient());
			ps.setString(5, a.getDate());
			ps.setString(6, a.getTime());
			ps.setString(7, a.getCh());
			return ps.executeUpdate()>0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public List<Appointment> appointmentlist() {
		List<Appointment> app=new ArrayList<Appointment>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		String query="SELECT APPOINTMENTID,AMOUNT,DOCTOR,PATIENT,DATE,TIME,CHOICE FROM APPOINTMENT";
		try {
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()) {
				Appointment a=new Appointment();
				a.setAppointmentid(rs.getInt("appointmentid"));
				a.setAmount(rs.getInt("amount"));
				a.setDoctor(rs.getString("doctor"));
				a.setPatient(rs.getString("patient"));
				a.setDate(rs.getString("date"));
				a.setTime(rs.getString("time"));
				a.setCh(rs.getString("choice"));
				
				app.add(a);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return app;
		
	}
	
}
