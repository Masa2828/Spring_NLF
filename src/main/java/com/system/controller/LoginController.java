package com.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	
	
	@RequestMapping(value = "/teacher_login", method = RequestMethod.GET)
	public String teacher_login(Model model) {
		return "/login/teacher";
	}
	
	@RequestMapping(value = "/students_login", method = RequestMethod.GET)
	public String students_login(Model model) {
		return "/login/students";
	}
	
	
	
}
