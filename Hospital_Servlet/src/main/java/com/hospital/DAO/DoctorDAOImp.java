package com.hospital.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bank.Connector.Connector1;
import com.hospital.DTO.Doctor;


public class DoctorDAOImp implements DoctorDAO<Doctor> {
	List<Doctor> d = new ArrayList<>();
private Connection con;
	
	public DoctorDAOImp() {
		this.con=Connector1.requestConnection();
	}
	

	@Override
	public List<Doctor> getDoctor() {
		List<Doctor> doctors=new ArrayList<Doctor>();
		PreparedStatement ps=null;
		ResultSet rs=null;
		String query="SELECT DOCTORID,DNAME,DSPECIALIZATION FROM DOCTOR";
		try {
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()) {
				Doctor d=new Doctor();
				d.setId(rs.getInt("doctorid"));
	            d.setName(rs.getString("dname"));
	            d.setSpecialization(rs.getString("dspecialization"));
				
				doctors.add(d);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return doctors;
		
	}
}
