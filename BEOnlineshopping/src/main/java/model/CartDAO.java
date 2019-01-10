package model;

import java.util.List;

import org.hibernate.Session;

public class CartDAO {

	private DBConfig dbc;
	private Session sess;
	public CartDAO()
	{
		dbc=new DBConfig();
	}
	
	public void insertCartProd(int id,String name)
	{
		ProductDAO pd=new ProductDAO();
		Product p=pd.getProduct(id);
		Cart c=new Cart();
		c.setItemId(p.pId);
		c.setItemName(p.pName);
		c.setItemPrice(p.pCost);
		c.itemQuantity++;
		c.setUcartname(name);
		try
		{
			sess=dbc.getSession();
			sess.beginTransaction();
			sess.save(c);
			sess.getTransaction().commit();
		}
		catch(Exception e)
		{
			sess.getTransaction().rollback();
			e.printStackTrace();
		}
		
	}
	
	public void updateCartProd(Cart cart)
	{
		int cost=cart.getItemPrice();
		cart.setItemPrice((cost*2));
		System.out.println(cart.itemPrice);
		int quantity=cart.getItemQuantity();
		cart.setItemQuantity((++quantity));
		System.out.println(cart.itemQuantity);
		try 
		{
		sess=dbc.getSession();
		sess.beginTransaction();
		sess.update(cart);
		sess.getTransaction().commit();
		
		}
		catch(Exception e)
		{
			sess.getTransaction().rollback();
			e.printStackTrace();
		}
	
	}
	
	public List<Cart> getCartinfo(String name)
	{
		List<Cart> l=null;
		try
		{
			sess=dbc.getSession();
			sess.beginTransaction();
			l=sess.createQuery("FROM Cart WHERE Ucartname='"+name+"'",Cart.class).getResultList();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return l;
	}
	
	public boolean isPresent(int id,String itemName,String uname)
	{
		boolean b=true;
		Cart cart=null;
		try
		{
		sess=dbc.getSession();
		sess.beginTransaction();
		cart=sess.get(Cart.class,id);
		sess.getTransaction().commit();
		}
		catch(Exception e)
		{
			sess.getTransaction().rollback();
			e.printStackTrace();
		}
		if(cart==null)
		{
			b=false;
		}
		else if(cart!=null&&cart.Ucartname==uname)
		{
			b=true;
		}
		else if(cart!=null&&cart.Ucartname!=uname)
		{
			b=false;
		}
		return b;
	}
	
	public Cart getItem(int id)
	{
		Cart cart=null;
		try
		{
		sess=dbc.getSession();
		sess.beginTransaction();
		cart=sess.get(Cart.class,id);
		sess.getTransaction().commit();
		}
		catch(Exception e)
		{
			sess.getTransaction().rollback();
			e.printStackTrace();
		}
		return cart;
	}
	
	public void removeItem(int id)
	{
		Cart cart=null;
		try
		{
			sess=dbc.getSession();
			sess.beginTransaction();
			cart=sess.get(Cart.class,id);
			sess.delete(cart);
			sess.getTransaction().commit();
		}
		catch(Exception e)
		{
			sess.getTransaction().rollback();
			e.printStackTrace();
		}
	}
}
