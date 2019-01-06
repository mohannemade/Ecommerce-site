package model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DBConfig {
	private Configuration cfg;
	private SessionFactory sf;
	private Session session;
	
	public DBConfig()
	{
		cfg =new Configuration();
		cfg.addAnnotatedClass(Product.class);
		cfg.addAnnotatedClass(Supplier.class);
		cfg.addAnnotatedClass(Category.class);
		cfg.addAnnotatedClass(Cart.class);
		cfg.addAnnotatedClass(User.class);
		sf=cfg.configure("Hibernate.cfg.xml").buildSessionFactory();
			
	}
	
	public Session getSession()
	{
		session=sf.getCurrentSession();
		return session;
	}

}
