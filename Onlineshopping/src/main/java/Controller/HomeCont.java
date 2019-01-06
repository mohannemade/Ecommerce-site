package Controller;

import java.util.List;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.Category;
import model.CategoryDAO;
import model.Product;
import model.ProductDAO;


@Controller
public class HomeCont {

	@RequestMapping(value= {"/","/home**","/welcome**" },method=RequestMethod.GET)
	public String homepage(Model m)
	{
		List<Category> lp=null;
		CategoryDAO cd=new CategoryDAO(); 
		try
		{
			lp=(List<Category>)cd.getCategory();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		m.addAttribute("categorylist", lp);
		return "home";
	}
		
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value="logout", required=false) String logout, Model m)
	{
		if(error != null) {
			m.addAttribute("error", "Invalid username and password!");
		}
		
		if(logout != null) {
			m.addAttribute("msg", "You have been logged out successfully");
		}
		return "login";
	}
	@RequestMapping(value="/403", method=RequestMethod.GET)
	public String accessDenied(Model m)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			m.addAttribute("username",userDetail.getUsername());
		}
		return "error404";
	}
	
}

