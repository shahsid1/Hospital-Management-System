package com.hospital.DTO;

public class Patient {
	private String pname,contact,medicalhistory,dname;
	 private int id,amount;
	 
	 public Patient()
	 {
		 super();
	 }
	 public Patient(String pname,String contact,String medicalhistory,String dname,int id,int amount)
	 {
	    this.pname=pname;
	    this.contact=contact;
	    this.medicalhistory=medicalhistory;
	    this.dname=dname;
	    this.id=id;
	    this.amount=amount;
	 }
	 
	 public String getPname()
	 {
		 return this.pname;
	 }
	 public String getContact()
	 {
		 return this.contact;
	 }
	 public String getMedicalhistory()
	 {
		 return this.medicalhistory;
	 }
	 public String getDname()
	 {
		 return this.dname;
	 }
	 public int getId()
	 {
		 return this.id;
	 }
	 public int getAmount()
	 {
		 return this.amount;
	 }

	public void setPname(String pname) {
		this.pname = pname;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public void setMedicalhistory(String medicalhistory) {
		this.medicalhistory = medicalhistory;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
}
