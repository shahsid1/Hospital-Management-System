package com.hospital.DTO;

public class Appointment {
	private int appointmentid,amount;
    private String doctor,patient,date,time,ch;
    
    public Appointment(int appointmentid,int amount,String doctor,String patient,String date, String time,String ch)
    {
    	this.appointmentid=appointmentid;
    	this.amount=amount;
    	this.doctor=doctor;
    	this.patient=patient;
    	this.date=date;
    	this.time=time;
    	this.ch=ch;
    }
   public Appointment()
   {
	   
   }
	
	public void setAppointmentid(int appointmentid) {
	this.appointmentid = appointmentid;
}
public void setAmount(int amount) {
	this.amount = amount;
}
public void setDoctor(String doctor) {
	this.doctor = doctor;
}
public void setPatient(String patient) {
	this.patient = patient;
}
public void setDate(String date) {
	this.date = date;
}
public void setTime(String time) {
	this.time = time;
}
public void setCh(String ch) {
	this.ch = ch;
}
	public int getAppointmentid() {
		return appointmentid;
	}

	public int getAmount() {
		return amount;
	}

	public String getDoctor() {
		return doctor;
	}

	public String getPatient() {
		return patient;
	}

	public String getDate() {
		return date;
	}

	public String getTime() {
		return time;
	}

	public String getCh() {
		return ch;
	}
	@Override
	public String toString() {
		return "Appointment [appointmentid=" + appointmentid + ", amount=" + amount + ", doctor=" + doctor + ", patient="
				+ patient + ", date=" + date + ", time=" + time + ", ch=" + ch + "]";
	}
    
}
