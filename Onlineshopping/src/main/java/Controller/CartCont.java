package Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Cart;
import model.CartDAO;
import model.DBConfig;
import model.Product;
import model.User;


@Controller
public class CartCont {
	
	@RequestMapping(value="/cartadd/{id}/{name}",method=RequestMethod.GET)
	public String getCartinfo(@PathVariable("id") int id,@PathVariable("name") String name, Model m)
	{
		CartDAO cd=new CartDAO();
		Cart cart=null;
		String Uname;
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Uname=authentication.getName();
		
		if(cd.isPresent(id,name,Uname))
		{
			cart=cd.getItem(id);
			
			
			cd.updateCartProd(cart);
			
		}
		else if(!cd.isPresent(id,name,Uname))
		{			
			cd.insertCartProd(id,Uname);
		}
		List<Cart> lp=null; 
		try
		{
			lp=(List<Cart>)cd.getCartinfo(Uname);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		m.addAttribute("cartlist",lp);
		return "cart";
	}
	
	@RequestMapping(value="/spinner/{n}",method=RequestMethod.GET)
	public void changedValue(@PathVariable("n") int n,Model m)
	{
		CartDAO cd=new CartDAO();
		Cart cart=null;
		cart=cd.getItem(1);
		int b=cart.getItemPrice();
		cart.setItemQuantity(n);
		cd.updateCartProd(cart);
		String Uname;
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Uname=authentication.getName();
		List<Cart> lp=null; 
		try
		{
			lp=(List<Cart>)cd.getCartinfo(Uname);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		m.addAttribute("cartlist",lp);
		
	}
	
	@RequestMapping(value="/cart",method=RequestMethod.GET)
	public String getCart(Model m)
	{
		List<Cart> lp=null; 
		CartDAO cd=new CartDAO();
		String Uname;
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Uname=authentication.getName();
		try
		{
			lp=(List<Cart>)cd.getCartinfo(Uname);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		m.addAttribute("cartlist",lp);		
		return "cart";
	}
	
	@RequestMapping(value="/removeitem/{id}",method=RequestMethod.GET)
	public String removeItem(@PathVariable("id") int id,Model m)
	{
		CartDAO c=new CartDAO();
		c.removeItem(id);
		List<Cart> lp=null; 
		String Uname;
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Uname=authentication.getName();
		try
		{
			lp=(List<Cart>)c.getCartinfo(Uname);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		m.addAttribute("cartlist",lp);		
		return "cart";
	}

	@RequestMapping(value="/getcartimg/{id}", method=RequestMethod.GET)
	public void displayImage(@PathVariable("id") int id, HttpServletResponse response, HttpServletRequest request)
	{
		DBConfig dbc;
		Session sess;
	    dbc=new DBConfig();
		try
		{
		sess=dbc.getSession();
		sess.beginTransaction();			
		Product p=new Product();
		p=sess.get(Product.class,id);
		sess.getTransaction().commit();
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
	    response.getOutputStream().write(p.getImage());
	    response.getOutputStream().close();
		}
		catch(Exception e)
		{
			//sess.getTransaction().rollback();
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/checkout/{cost}", method=RequestMethod.GET)
	public String getCheckout(@PathVariable("cost") int cost, Model m)
	{
		m.addAttribute("price",cost);
		return "payment";
	}
	
	@RequestMapping(value="/thankyou/{cost}", method=RequestMethod.GET)
	public String thankYou(@PathVariable("cost") int cost ,Model m)
	{
		m.addAttribute("price",cost);
		return "thankyou";
	}
}

