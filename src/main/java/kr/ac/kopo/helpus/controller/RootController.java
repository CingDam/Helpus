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
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class RootController {

	@Autowired
	UserService userService;
	
	@Autowired
	CompanyService companyService;

	@RequestMapping("/")
	public String index() {

		return "index";
	}
	@PostMapping("/list")
	public String index(String keyword,Model model) {
		
		List<Detail> list = companyService.search(keyword);
		
		model.addAttribute("list", list);
		
		return "list";
	}
	//테스트용 나중에 지울 것
	@GetMapping("checkId")
	public String checkId() {
		return "checkId";
	}
	
	//@ResponseBody
	@PostMapping("/checkId")
	public String checkId(String id) {
		System.out.println(id);
		if(userService.checkId(id) && companyService.checkId(id)) {
			return "OK";
		} else
			return "FAIL";
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	//@ResponseBody	
	@PostMapping("/login/{code}")
	public String login(@PathVariable int code, User user, Company company, HttpSession session) {
		if(code == 0) {
			if (userService.login(user)) {
				user.setUserPw(null);
	
				session.setAttribute("user", user);
				return "OK";
			}
			
			return "FAIL";
			
		} else if(code == 1) {
			if(companyService.login(company)) {
				System.out.println("로그인 성공");
				company.setCoPw(null);
				
				session.setAttribute("company", company);
				//return "OK";
				return "redirect:..";
			}
			return "FAIL";
		} else
			return "ERROR";

	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	@PostMapping("/signup/{code}")
	//@ResponseBody
	public String signup(@PathVariable int code, User user, Company company) {
		if(code == 0) {
				userService.signup(user);
				
				return "OK";
			} 
		if(code == 1) {
				companyService.signup(company);
				
				return "OK";
		} else {
			return "ERROR";
		}
	}
	
	
	
	
	
	
	
	
}
