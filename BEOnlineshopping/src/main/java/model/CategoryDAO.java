package model;

import java.util.List;

import org.hibernate.Session;

public class CategoryDAO {

	private DBConfig dbc;
	private Session sess;
	public CategoryDAO()
	{
		dbc=new DBConfig();
	}
	
	public void insertCategory(Category C)
	{	try 
		{
		sess=dbc.getSession();
		sess.beginTransaction();
		sess.save(C);
		sess.getTransaction().commit();
		
		}
		catch(Exception e)
		{
			sess.getTransaction().rollback();
			e.printStackTrace();
		}
	}
	
	public List<Category> getCategory()
	{
		List<Category> l=null;
		try
		{
			sess=dbc.getSession();
			sess.beginTransaction();
			l=sess.createQuery("FROM Category ",Category.class).getResultList();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return l;
	}
	
	public void deleteCategory(int id)
	{
		try {
			sess=dbc.getSession();
			sess.beginTransaction();			
			Category c=new Category();
			c.setcId(id);
			sess.delete(c);
			sess.getTransaction().commit();
		}
		catch(Exception e)
		{
			sess.getTransaction().rollback();
			e.printStackTrace();
		}
	}
	
	public List<Category> getAllCategorys()
	{
		List<Category> l=null;
		try
		{
			sess=dbc.getSession();
			sess.beginTransaction();
			l=sess.createQuery("FROM  Category",Category.class).getResultList();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return l;
	}
	
}
