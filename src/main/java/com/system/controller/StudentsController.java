package com.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudentsController {
	
	@RequestMapping(value = "/application", method = RequestMethod.GET)
	public String application(Model model) {
		return "/students/application/students_application";
	}
	
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chat(Model model) {
		return "/students/chat/students_chat";
	}
	
	@RequestMapping(value = "/correction", method = RequestMethod.GET)
	public String correction(Model model) {
		return "/students/correction/students_correction";
	}
	
	@RequestMapping(value = "/general", method = RequestMethod.GET)
	public String general(Model model) {
		return "/students/general/students_general";
	}
	
	@RequestMapping(value = "/report", method = RequestMethod.GET)
	public String report(Model model) {
		return "/students/report/students_report";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Model model) {
		return "/students/serach/students_serach";
	}
	
}
