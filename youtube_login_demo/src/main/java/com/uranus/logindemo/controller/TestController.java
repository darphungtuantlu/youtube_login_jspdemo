package com.uranus.logindemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.uranus.logindemo.model.User;
import com.uranus.logindemo.repository.UserRepo;

@Controller
public class TestController {
	
	@Autowired
	private UserRepo repo;
	// cach 1
	@GetMapping("/test")
	public String test() {
		return "test";
	}
	@GetMapping("/register")
	public String showSignUpForm(Model model)
	{
		model.addAttribute("user", new User());
		return "signup_form";
	}
	
//	@PostMapping("/process_register")
//	public String processRegistration(User user)
//	{
//		repo.save(user);
//		return "register_success";
////		User user = new User();
////        user.setEmail(email);
////        user.setPassword(password);
////        user.setFirstName(firstName);
////        user.setLastName(lastName);
////        repo.save(user);
//	}
	
	@PostMapping(path = "/process_register", consumes = "application/x-www-form-urlencoded")
	public RedirectView processRegistration(@RequestBody User user) {
									///RedirectAttributes redirectAttributes
		repo.save(user);	
		return new RedirectView("/register_success",true);// trả về succes - thay đổi cả đối tượng
		
	}
}
