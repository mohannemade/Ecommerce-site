package model;

import org.hibernate.Session;

public class SupplierDAO {

	private DBConfig db;
	private Session sess;
	public SupplierDAO()
	{
		db = new DBConfig();
	}
	
	public void insertSupplier(Supplier s)
	{	
		try
		{
			sess = db.getSession();
			sess.beginTransaction();
			sess.save(s);
			sess.getTransaction().commit();
			
		}catch(Exception ex)
		{	
			sess.getTransaction().rollback();
			ex.printStackTrace();
		}
	}
}
