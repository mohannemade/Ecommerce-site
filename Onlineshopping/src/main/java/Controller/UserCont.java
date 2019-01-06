package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.User;
import model.UserDAO;

@Controller
public class UserCont {

	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String getregisterpage()
	{
		return "register";
	}
	
	@RequestMapping(value="/registersuccess", method=RequestMethod.GET)
	public String registerinfo(@ModelAttribute("U1") User U,Model m)
	{
		m.addAttribute("msg","Registered successfully");
		UserDAO u=new UserDAO();
		u.insertUser(U);
		return "register";
	}
}
