package info.lejin.raphael.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import info.lejin.raphael.dao.UserDao;
import info.lejin.raphael.model.User;

/**
 * this class will be responsible for all the user management functionalities
 * from the admin module
 * 
 * @author lejin
 *
 */
@Controller
public class UserManager {
	
	@Autowired
	private UserDao userDao;
	
	@GetMapping("/admin/users")
	public ModelAndView userHome() {
		User user=new User();
		ModelAndView modelAndView = new ModelAndView("admin/user");
		modelAndView.addObject("userForm", user);
		modelAndView.addObject("users", userDao.list());
		return modelAndView;
	}
	@PostMapping("/admin/user/add")
	public String addUser(@ModelAttribute("userForm") User user){
		userDao.saveOrUpdate(user);
		return "redirect:/admin/users";
		
	}
}
