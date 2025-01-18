package com.hospital.DTO;

public class Doctor {
	 private String name,specialization;
	 private int id;
	 
	 public Doctor(int id,String name,String specialization)
	 {
		 this.id=id;
		 this.name=name;
		 this.specialization=specialization;	
	 }
	 public Doctor()
	 {
		 
	 }
	
	public void setName(String name) {
		this.name = name;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName()
	 {
		 return this.name;
	 }
	 public String getSpecialization()
	{
		 return this.specialization;
	}
	 public int getId()
	 {
		 return this.id;
	 }
	 @Override
		public String toString() {
			return "Doctor [name=" + name + ", specialization=" + specialization + ", id=" + id + "]";
		}
}
