package model;

import org.hibernate.Session;

public class UserDAO {
	private DBConfig dbc;
	private Session sess;
	public UserDAO()
	{
		dbc=new DBConfig();
	}
	
	public void insertUser(User user)
	{
		try 
		{
		sess=dbc.getSession();
		sess.beginTransaction();
		sess.save(user);
		sess.getTransaction().commit();
		
		}
		catch(Exception e)
		{
			sess.getTransaction().rollback();
			e.printStackTrace();
		}
	}
	
}
