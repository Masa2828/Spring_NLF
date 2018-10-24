package com.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudentsController {

	
	@RequestMapping(value = "/application_s", method = RequestMethod.GET)
	public String application_s(Model model) {
		return "/students/application/students_application";
	}
	
	@RequestMapping(value = "/chat_s", method = RequestMethod.GET)
	public String chat_s(Model model) {
		return "/students/chat/students_chat";
	}
	
	@RequestMapping(value = "/correction_s", method = RequestMethod.GET)
	public String correction_s(Model model) {
		return "/students/correction/students_correction";
	}
	
	@RequestMapping(value = "/general_s", method = RequestMethod.GET)
	public String general_s(Model model) {
		return "/students/general/students_general";
	}
	
	@RequestMapping(value = "/report_s", method = RequestMethod.GET)
	public String report_s(Model model) {
		return "/students/report/students_report";
	}
	
	@RequestMapping(value = "/search_s", method = RequestMethod.GET)
	public String search_s(Model model) {
		return "/students/search/students_search";
	}
	
}
