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

import com.system.check.LoginForm;
import com.system.validation.GroupOrder;

@Controller
public class LoginController {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@RequestMapping(value = "/teacher_login", method = RequestMethod.POST)
	public String teacher_login(Model model,
			@Validated(GroupOrder.class) @ModelAttribute("LoginForm") LoginForm loginForm, BindingResult result,
			HttpServletRequest req) {
		if (result.hasErrors()) {
			return "/login/teacher";
		}

		// mysql値受け取り
		List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from teacher where teacher_id=\""
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
			return "/teacher/teacher_top";

		} else {
			return "/login/teacher";
		}
	}

	@RequestMapping(value = "/teacher_top")
	public String teacher_top(Model model) {

		List<Map<String, Object>> teacher_info = jdbcTemplate.queryForList("select * from teacher");

		System.out.println(teacher_info);

		return "/teacher/teacher_top";
	}

	@RequestMapping(value = "/students_login", method = RequestMethod.POST)
	public String students_login(Model model,
			@Validated(GroupOrder.class) @ModelAttribute("LoginForm") LoginForm loginForm, BindingResult result,
			HttpServletRequest req) {
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

	@RequestMapping(value = "/students_top")
	public String students_top(Model model) {

		return "/students/students_top";
	}

	// ログアウト
	@RequestMapping(value = "/logout_s", method = RequestMethod.POST)
	public String logout_s(HttpServletRequest req) {
		HttpSession session = req.getSession(true);

		// 既存セッション破棄
		session.invalidate();

		return "/login/students";
	}

	// ログアウト
	@RequestMapping(value = "/logout_t", method = RequestMethod.POST)
	public String logout_t(HttpServletRequest req) {
		HttpSession session = req.getSession(true);

		// 既存セッション破棄
		session.invalidate();

		return "/login/teacher";
	}

}
