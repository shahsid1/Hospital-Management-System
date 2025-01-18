package com.hospital.DAO;

import java.util.List;

import com.hospital.DTO.Appointment;
import com.hospital.DTO.Patient;

public interface AppointmentDAO<Appointment> {

	public boolean scheduleappointment(Appointment a);
	public List<Appointment> appointmentlist();
}
