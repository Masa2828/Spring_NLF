package com.system.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudentsController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@RequestMapping(value = "/application_s", method = RequestMethod.GET)
	public String application_s(Model model, HttpServletRequest req) {

		return "/students/application/students_application";
	}

	@RequestMapping(value = "/application_insert", method = RequestMethod.GET)
	public String application_insert(Model model, HttpServletRequest req) throws UnsupportedEncodingException{

		req.setCharacterEncoding("UTF-8");
		
		String StartDay = req.getParameter("New_Start_Day");
		String FinishDay = req.getParameter("New_End_Day");
		String Place = req.getParameter("New_Place");
		String Contect = req.getParameter("New_Contect");
		String Company = req.getParameter("New_Company");
		String Report = req.getParameter("New_Report");
		String ReportDay = req.getParameter("New_Report_Day");
		String Memo = req.getParameter("New_Memo");
		
		req.setAttribute("New_Start_Day", StartDay);
		req.setAttribute("New_End_Day", FinishDay);
		req.setAttribute("New_Place", Place);
		req.setAttribute("New_Contect", Contect);
		req.setAttribute("New_Company", Company);
		req.setAttribute("New_Report", Report);
		req.setAttribute("New_Report_Day", ReportDay);
		req.setAttribute("New_Memo", Memo);

		jdbcTemplate.update(
				"insert into applications(start_day, finish_day , place, content, company, report, report_day, memo) values(?,?,?,?,?,?,?,?)",
				StartDay, FinishDay, Place, Contect, Company, Report, ReportDay, Memo);

		return "/students/students_top";
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
