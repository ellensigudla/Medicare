package org.simplilearn.controllers;

import javax.servlet.http.HttpSession;

import org.simplilearn.entities.User;
import org.simplilearn.models.LoginModel;
import org.simplilearn.models.UserModel;
import org.simplilearn.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	private UserService userService;
	
	public HomeController(UserService userService) {
		super();
		this.userService = userService;
	}
	
	@GetMapping("/")
	public String showHome() {
		return "home";
	}
	@GetMapping("/showRegister")
	public String showRegister() {
		return "register";
	}
	/*
	 * @PostMapping("/register") public String register(HttpServletRequest request)
	 * { String username=request.getParameter("username"); String
	 * password=request.getParameter("password"); String
	 * email=request.getParameter("email");
	 * 
	 * }
	 */
	
	@PostMapping("/register")
	public String register(@RequestParam("username") String username,@RequestParam("password") String password
			,@RequestParam("email") String email,Model model) {
		String viewName;
		UserModel userModel=new UserModel(username, password, email);
		User user=userService.registerUser(userModel);
		if(user!=null) {
			model.addAttribute("msg", "User registered Successfully");
			viewName="home";
		}
		else
		{
			model.addAttribute("msg", "User is not registered");
			viewName="home";
		}
		return viewName;	
	}
	@GetMapping("/showLogin")
	public String showLogin() {
		return "login";
	}
	@PostMapping("/login")
	public String login(@RequestParam("username") String username,
			@RequestParam("password") String password,HttpSession session,Model mod) {
		String msg=null;
		String viewName=null;
		LoginModel model=new LoginModel();
		model.setUsername(username);
		model.setPassword(password);
		User user=userService.validateUser(model);
		if(user==null)
		{
			msg="Username/Password is wrong";
			mod.addAttribute("msg", msg);
			return "login";
		}
		else
		{
			session.setAttribute("user", user);
			if(user.getUserType().equals("CUSTOMER"))
				viewName="redirect:/submit";
			else
				viewName="adminDashboard";
		}
		return viewName;
	}
}