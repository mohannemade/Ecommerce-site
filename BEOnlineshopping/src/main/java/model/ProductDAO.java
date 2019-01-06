package model;

import java.util.List;

import org.hibernate.Session;

public class ProductDAO {
	private DBConfig dbc;
	private Session sess;
	public ProductDAO()
	{
		dbc=new DBConfig();
	}
	
	public void insertProduct(Product product)
	{	
		try 
		{
		sess=dbc.getSession();
		sess.beginTransaction();
		sess.save(product);
		sess.getTransaction().commit();
		
		}
		catch(Exception e)
		{
			sess.getTransaction().rollback();
			e.printStackTrace();
		}
	}
	
	public List<Product> getProducts()
	{
		List<Product> l=null;
		try
		{
			sess=dbc.getSession();
			sess.beginTransaction();
			l=sess.createQuery("FROM Product",Product.class).getResultList();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return l;
	}
	
	public List<Product> getProductsinfo(String name)
	{
		List<Product> l=null;
		try
		{
			sess=dbc.getSession();
			sess.beginTransaction();
			l=sess.createQuery("FROM Product WHERE cname='"+name+"'",Product.class).getResultList();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return l;
	}

	public void deleteProduct(int id)
	{
		try {
			sess=dbc.getSession();
			sess.beginTransaction();			
			Product p=new Product();
			p=sess.get(Product.class,id);
			sess.delete(p);
			sess.getTransaction().commit();
		}
		catch(Exception e)
		{
			sess.getTransaction().rollback();
			e.printStackTrace();
		}
	}
	
	public Product getProduct(int id)
	{
		Product product=null;
		try
		{
		sess=dbc.getSession();
		sess.beginTransaction();
		product=sess.get(Product.class,id);
		}
		catch(Exception e)
		{
			sess.getTransaction().rollback();
			e.printStackTrace();
		}
		return product;
	}
	
}
