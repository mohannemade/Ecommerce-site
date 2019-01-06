package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.Category;
import model.CategoryDAO;
import model.DBConfig;
import model.Product;
import model.ProductDAO;

@Controller
public class CategoryCont {

	@RequestMapping(value="/categoryadd", method=RequestMethod.GET)
	public String manageCategory()
	{
		return "categoryadd";
	}
	@RequestMapping(value="/categorysuccess", method=RequestMethod.GET)
	public String categoryAdd(@ModelAttribute("C1") Category C, Model m)
	{
		m.addAttribute("message3","Category added successfully");
		CategoryDAO cd=new CategoryDAO();
		cd.insertCategory(C);
		return "categoryadd";
	}
	

	@RequestMapping(value="/managecategorys/{cname}", method=RequestMethod.GET)
	public String getCategorylists(@PathVariable("cname") String cname,Model m)
	{
		List<Product> lp=null;
		ProductDAO pd=new ProductDAO();
		try
		{
			lp=(List<Product>)pd.getProductsinfo(cname);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		m.addAttribute("list",lp);
		return "categoryprodlist";
	}
//	@RequestMapping(value="/managecategory1", method=RequestMethod.GET)
//	public String getCategorylist1()
//	{
//		return "managecategory1";
//	}
	
	@RequestMapping(value="/deletecategory/{cid}", method=RequestMethod.GET)
	public String deleteCategory(@PathVariable("cid") int cid)
	{
		CategoryDAO cd =new CategoryDAO();
		cd.deleteCategory(cid);
		return "deletepage";
	}
	
	@RequestMapping(value="/deletecategory1/{cid}", method=RequestMethod.GET)
	public void deleteCategory1(@PathVariable("cid") int cid, Model m)
	{
		CategoryDAO cd =new CategoryDAO();
		cd.deleteCategory(cid);
	}
	
	@RequestMapping(value="/getimg/{id}", method=RequestMethod.GET)
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
}
