package kr.ac.kopo.helpus.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.helpus.model.User;
import kr.ac.kopo.helpus.service.CategoryService;
import kr.ac.kopo.helpus.service.CompanyService;
import kr.ac.kopo.helpus.service.DetailService;
import kr.ac.kopo.helpus.service.KeywordService;
import kr.ac.kopo.helpus.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	private final String path="user/";
	
	@Autowired
	UserService service;
	@Autowired
	CompanyService companyService;
	@Autowired
	DetailService detailService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	KeywordService keywordService;
	
	@GetMapping("/mypage")
	public String mypage() {
		return path + "mypage";
	}
	
	@GetMapping("/userUpdate")
	public String userUpdate(HttpSession session, Model model) {
		User item = (User) session.getAttribute("user");
		
		model.addAttribute("item", item);
		
		return path + "userUpdate";
	}
	
	@PostMapping("/userUpdate")
	public String userUpdate(User user, HttpSession session) {
		User item = (User) session.getAttribute("user");
		
		user.setUserCode(item.getUserCode());
		
		service.userUpdate(user);
		
		return "redirect:../";
	}
	
	@GetMapping("/pwCheck")
	public String pwCheck() {
		return path + "pwCheck";
	}
	
	@PostMapping("/pwCheck")
	public String pwCheck(HttpSession session, User user) {
		User item = (User) session.getAttribute("user");
		
		user.setUserCode(item.getUserCode());
		
		if(service.pwCheck(user))
			return path + "userPwUpdate";
		else
			return path + "FAIL";
	}
	
	@PostMapping("/userPwUpdate")
	public String userPwUpdate() {
		return "ERROR";
	}
}
