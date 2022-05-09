package kr.ac.kopo.helpus.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Detail;
import kr.ac.kopo.helpus.model.User;
import kr.ac.kopo.helpus.service.CompanyService;
import kr.ac.kopo.helpus.service.UserService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class RootController {

	@Autowired
	UserService userservice;
	@Autowired
	CompanyService companyservice;

	@RequestMapping("/")
	public String index() {

		return "index";
	}
	@PostMapping("/list")
	public String index(String keyword,Model model) {
		
		List<Detail> list = companyservice.search(keyword);
		
		model.addAttribute("list", list);
		
		return "list";
	}

	@PostMapping("/login")
	@ResponseBody
	public String login(User user, Company company, HttpSession session) {
		if(user.getLoginCode() == 0) {
			if (userservice.login(user)) {
				user.setUserPw(null);
	
				session.setAttribute("user", user);
				return "user";
			}
			
			return "false";
			
		} else {
			if(companyservice.login(company)) {
				company.setCoPw(null);
				
				session.setAttribute("company", company);
				return "company";
			}
			
			return "false";
		}

	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@PostMapping("/signup/{code}")
	@ResponseBody
	public String signup(@PathVariable int code, User user, Company company) {
		if(code == 0) {
			if(userservice.checkId(user.getUserId())) {
				userservice.signup(user);
				
				return "user";
			} else {
				return "false";
			}
		}
		else {
			if(companyservice.checkId(company.getCoId())) {
				companyservice.signup(company);
				
				return "company";
			} else {
				return "false";
			}
		}
	}
	
	
	
	
	
	
	
	
}
