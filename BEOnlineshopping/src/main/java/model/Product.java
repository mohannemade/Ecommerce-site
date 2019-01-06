package model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Transient;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int pId;
	String pName;
	int pCost;
	String pDescription;
	String cname;
	
	@Transient
	String name;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	//	@ManyToOne
//	@JoinColumn(name="CategoryId")
//	private Category category;
//	public Category getCategory() {
//		return category;
//	}
//
//	public void setCategory(Category category) {
//		this.category = category;
//	}
	@Lob
	byte[] image;
	
	public Product()
	{
		
	}
	
	public Product(String pName, int pCost, String pDescription, String cname, byte[] image) {
		super();
		this.pName = pName;
		this.pCost = pCost;
		this.pDescription = pDescription;
		this.cname = cname;
		this.image = image;
	}
	
	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getpCost() {
		return pCost;
	}
	public void setpCost(int pCost) {
		this.pCost = pCost;
	}
	public String getpDescription() {
		return pDescription;
	}
	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
		
}
