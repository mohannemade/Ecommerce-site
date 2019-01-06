package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Supplier {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int sId;
	String sName;
	String sLocation;
	public Supplier()
	{
		
	}
	public Supplier(int sId, String sName, String sLocation) {
		this.sName = sName;
		this.sLocation = sLocation;
	}
	public int getsId() {
		return sId;
	}
	public void setsId(int sId) {
		this.sId = sId;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsLocation() {
		return sLocation;
	}
	public void setsLocation(String sLocation) {
		this.sLocation = sLocation;
	}
	
	
	
}
