package com.system.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TeacherController {
	@Autowired
	private JdbcTemplate jdbcTemplate;


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

	@RequestMapping(value = "/add_t")
	public String add_t(Model model) {
		List<Map<String, Object>> students_add = jdbcTemplate.queryForList("select * from students");

		model.addAttribute("add", students_add);
		
		return "/teacher/add/teacher_add";
	}

}
