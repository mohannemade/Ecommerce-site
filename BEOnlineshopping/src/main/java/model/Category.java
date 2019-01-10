package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Category {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)	
	int cId;
	@Column(unique = true)
	String cName;
	String cDescription;
	public Category()
	{
		
	}
	public Category(String cName,String cDescription) {
		this.cName = cName;
		this.cDescription=cDescription;
	}
	
	public String getcDescription() {
		return cDescription;
	}
	public void setcDescription(String cDescription) {
		this.cDescription = cDescription;
	}
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	
	
}

