package com.hospital.DAO;

import java.util.List;

import com.hospital.DTO.Doctor;

public interface DoctorDAO<Doctor> {

	public List<Doctor> getDoctor();
}
