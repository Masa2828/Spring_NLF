package com.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TeacherController {
	
	@RequestMapping(value = "/chat_t", method = RequestMethod.GET)
	public String chat_t(Model model) {
		return "/teacher/chat/teacher_chat";
	}
	
	@RequestMapping(value = "/check_t", method = RequestMethod.GET)
	public String check_t(Model model) {
		return "/teacher/check/teacher_check";
	}
	
	@RequestMapping(value = "/general_t", method = RequestMethod.GET)
	public String general_t(Model model) {
		return "/teacher/general/teacher_general";
	}
	
	
	@RequestMapping(value = "/search_t", method = RequestMethod.GET)
	public String search_t(Model model) {
		return "/teacher/search/teacher_search";
	}
	
	@RequestMapping(value = "/add_t", method = RequestMethod.GET)
	public String add_t(Model model) {
		return "/teacher/add/teacher_add";
	}



}
