package com.hospital.DAO;

import java.util.List;

import com.hospital.DTO.Patient;

public interface PatientDAO<Patient> {
	public List<Patient> getPatient();
	public boolean register(Patient p);
}
