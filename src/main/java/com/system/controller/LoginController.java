package com.system.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.system.check.LoginForm;
import com.system.validation.GroupOrder;

@Controller
public class LoginController {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@RequestMapping(value = "/teacher_login", method = RequestMethod.GET)
	public String teacher_login(Model model,
			@Validated(GroupOrder.class) @ModelAttribute("loginForm") LoginForm loginForm, BindingResult result,
			HttpServletRequest req) {
		if (result.hasErrors()) {
			return "/login/teacher";
		}
		// mysql値受け取り
		List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from teacher where teacher_id=\""
				+ loginForm.getLoginName() + "\" and " + "password=\"" + loginForm.getLoginPassword() + "\";");

		List<Map<String, Object>> teacher_top_SQL = jdbcTemplate.queryForList("select * from teacher");
		if (list.size() > 0) {
			HttpSession session = req.getSession(true);

			// 既存セッション破棄
			session.invalidate();

			// 新規セッションを開始
			HttpSession newSession = req.getSession(true);

			// セッションに値を格納
			newSession.setAttribute("loginName", loginForm.getLoginName());
			model.addAttribute("loginName", loginForm.getLoginName());
			model.addAttribute("pass", list.get(0).get("password"));

			model.addAttribute("teacher_top_SQL", teacher_top_SQL);
			return "/teacher/teacher_top";

		} else {
			return "/login/teacher";
		}
	}

	@RequestMapping(value = "/teacher_top", method = RequestMethod.GET)
	public String teacher_top(Model model, @RequestParam("loginName") String teacher_id) {
		List<Map<String, Object>> teacher_info = jdbcTemplate.queryForList("select * from teacher where teacher_id = ?",
				teacher_id);
		model.addAttribute("teacher_info", teacher_info);
		System.out.println("teacher_info");
		System.out.println("aaaa");

		return "/teacher/teacher_top";
	}

	@RequestMapping(value = "/students_login", method = RequestMethod.GET)
	public String students_login(Model model, @Validated(GroupOrder.class) @ModelAttribute("LoginForm") LoginForm loginForm, BindingResult result, HttpServletRequest req) {
		if (result.hasErrors()) {
			return "/login/students";
		}
		// mysql値受け取り
		List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from students where students_id=\""
				+ loginForm.getLoginName() + "\" and " + "password=\"" + loginForm.getLoginPassword() + "\";");
		if (list.size() > 0) {
			HttpSession session = req.getSession(true);

			// 既存セッション破棄
			session.invalidate();

			// 新規セッションを開始
			HttpSession newSession = req.getSession(true);

			// セッションに値を格納
			newSession.setAttribute("LoginForm", loginForm.getLoginName());
			model.addAttribute("LoginForm", loginForm.getLoginName());
			model.addAttribute("pass", list.get(0).get("password"));
			return "/students/students_top";

		} else {
			return "/login/students";
		}

	}

	@RequestMapping(value = "/students_top", method = RequestMethod.GET)
	public String students_top(Model model) {
		List<Map<String, Object>> students_top_SQL = jdbcTemplate.queryForList("select * from students");

		model.addAttribute("students_top_SQL", students_top_SQL);

		return "/students/students_top";
	}

}
