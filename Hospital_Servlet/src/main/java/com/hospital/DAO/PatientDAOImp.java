package com.hospital.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


import com.bank.Connector.Connector1;
import com.hospital.DTO.Patient;

public class PatientDAOImp implements PatientDAO<Patient> {
	Scanner sc=new Scanner(System.in);
private Connection con;
	
	public PatientDAOImp() {
		this.con=Connector1.requestConnection();
	}
	
	@Override
	public List<Patient> getPatient() {
		List<Patient> patients=new ArrayList<Patient>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		String query="SELECT PNAME,CONTACT,MEDICALHISTORY,DNAME,PATIENTID,AMOUNT FROM PATIENT";
		try {
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()) {
				Patient p=new Patient();
				p.setPname(rs.getString("pname"));
				p.setContact(rs.getString("contact"));
				p.setMedicalhistory(rs.getString("medicalhistory"));
				p.setDname(rs.getString("dname"));
				p.setId(rs.getInt("patientid"));
				p.setAmount(rs.getInt("amount"));
				

				
				
				
				patients.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return patients;
	}

	@Override
	public boolean register(Patient p) {
		PreparedStatement ps=null;
		String query="INSERT INTO PATIENT(PNAME,CONTACT,MEDICALHISTORY,DNAME,PATIENTID,AMOUNT) VALUES(?,?,?,?,?,?)";
		try {
			ps=con.prepareStatement(query);
			ps.setString(1, p.getPname());
			ps.setString(2, p.getContact());
			ps.setString(3, p.getMedicalhistory());
			ps.setString(4, p.getDname());
			ps.setInt(5, p.getId());
			ps.setInt(6, p.getAmount());
			return ps.executeUpdate()>0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}

	

	

}
