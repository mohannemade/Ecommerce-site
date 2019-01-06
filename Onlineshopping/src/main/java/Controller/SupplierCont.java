package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Product;
import model.Supplier;
import model.SupplierDAO;

@Controller
public class SupplierCont {
	
	@RequestMapping(value="/addsupplier",method=RequestMethod.GET)
	public String addSupplier()
	{
		return "supplieradd";
	}
	
	@RequestMapping(value="/suppliersuccess",method=RequestMethod.GET)
	public String getSupplier(@ModelAttribute("S1") Supplier S,Model m)
	{
		m.addAttribute("message2","Supplier added successfully");
		SupplierDAO sd=new SupplierDAO();
		sd.insertSupplier(S);
		return "supplieradd";
	}
}
