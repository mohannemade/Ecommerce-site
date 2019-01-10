package Controller;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import model.Category;
import model.CategoryDAO;
import model.Product;
import model.ProductDAO;
import model.Supplier;

@Controller
public class ProductCont {
	@RequestMapping(value="/addProduct",method=RequestMethod.GET)
	public String homepage(Model m)
	{
		List<Category> lp=null;
		CategoryDAO cd=new CategoryDAO();
		try
		{
			lp=(List<Category>)cd.getAllCategorys();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		m.addAttribute("products",lp);
		return "productadd";
	}
	
	@RequestMapping(value="/manageproduct",method=RequestMethod.GET)
	public String manageProduct()
	{
		return "manageProduct";
	}
	
	@RequestMapping(value="/productsuccess",method=RequestMethod.GET)
	public String addProduct(@ModelAttribute("P1") Product P,@ModelAttribute("S2") Category C, Model m)
	{
		m.addAttribute("message1","Product added successfully");
		String str="C:\\Users\\snehal nemade\\eclipse-workspacenew\\";
		String s=str+P.getName();
		File file = new File(s);
        byte[] bFile = new byte[(int) file.length()];
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            fileInputStream.read(bFile);
            fileInputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        P.setImage(bFile);
		ProductDAO pd=new ProductDAO();
		pd.insertProduct(P);
		return "productadd";
	}
	
	@RequestMapping(value="/getproducts",method=RequestMethod.GET)
	@ResponseBody
	public List<Product> getProductsinfo()
	{
		List<Product> lp=null;
		ProductDAO pd=new ProductDAO();
		try
		{
			lp=(List<Product>)pd.getProducts();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return lp;
	}
	
	@RequestMapping(value="/getproductlist",method=RequestMethod.GET)
	public String getProductList()
	{
		return "manageProduct";
	}
	
	@RequestMapping(value="/deleteproduct/{pid}/{cname}",method=RequestMethod.GET)
	public String deleteProduct(@PathVariable("pid") int pid,@PathVariable("cname") String cname,Model m)
	{
		ProductDAO pd= new ProductDAO();
		pd.deleteProduct(pid);
		List<Product> lp=null;
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
	
}
