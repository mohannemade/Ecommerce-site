package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Cart {

	@Id
	int itemId;
	String itemName;
	int itemPrice;
	int itemQuantity=0;
	String Ucartname;
	
	public String getUcartname() {
		return Ucartname;
	}
	public void setUcartname(String ucartname) {
		Ucartname = ucartname;
	}
	public Cart()
	{
		
	}
	public Cart(int itemId,String itemName, int itemPrice, int itemQuantity, String Ucartname) {
		this.itemId = itemId; 
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.itemQuantity = itemQuantity;
		this.Ucartname=Ucartname;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public int getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}
	public int getItemQuantity() {
		return itemQuantity;
	}
	public void setItemQuantity(int itemQuantity) {
		this.itemQuantity = itemQuantity;
	}
	
}
