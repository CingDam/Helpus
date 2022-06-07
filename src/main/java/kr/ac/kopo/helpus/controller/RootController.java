package kr.ac.kopo.helpus.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.helpus.model.Category;
import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Detail;
import kr.ac.kopo.helpus.model.Keyword;
import kr.ac.kopo.helpus.model.User;
import kr.ac.kopo.helpus.service.CategoryService;
import kr.ac.kopo.helpus.service.CompanyService;
import kr.ac.kopo.helpus.service.DetailService;
import kr.ac.kopo.helpus.service.KeywordService;
import kr.ac.kopo.helpus.service.MailService;
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
	
	@Autowired
	DetailService detailService;
	
	@Autowired
	MailService mailService;
	
	@Autowired
	CategoryService cateService;
	@Autowired
	KeywordService keyService;
	
	//메인페이지
	@RequestMapping("/")
	public String index(HttpSession session, Model model) {
		String msg = (String) session.getAttribute("msg");
		if(msg != null) {
			session.removeAttribute("msg");
			
			model.addAttribute("msg", msg);
			
			session.invalidate();
			
		}
		List<Keyword> keyList = keyService.mostList(); 
		List<Category> cateList = cateService.list();
		
		model.addAttribute("cate", cateList);
		model.addAttribute("key",keyList);
		return "index";
	}
	
	//회사리스트검색
	@PostMapping("/list")
	public String index(String keyword,Model model) {
		
		List<Detail> list = detailService.search(keyword);
		
		model.addAttribute("list", list);
		
		return "list";
	}
	
	@ResponseBody
	@GetMapping("/checkId")
	public String checkId(@RequestParam("id") String id) {
		if(userService.checkId(id) && companyService.checkId(id)) {
			return "OK";
		} else
			return "FAIL";
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@ResponseBody	
	@PostMapping("/login/company")
	public String loginCo(@RequestBody Company company, HttpSession session) {
			if(companyService.login(company)) {
				company.setCoPw(null);
				session.setAttribute("company", company);
				return "OK";
				}
				return "FAIL";
	} 
	
	@ResponseBody	
	@PostMapping("/login/user")
	public String loginUser(@RequestBody User user, HttpSession session) {
		
			if(userService.login(user)) {
				if(user.getEmailCheck() == '0') {
					return "EMAIL";
				} else {
					user.setUserPw(null);
					session.setAttribute("user", user);
					return "OK";
				}
			}
			return "FAIL";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		return "redirect:/";
	}
	
	@ResponseBody
	@PostMapping("/signup/user")
	public String signup(@RequestBody User user) {
		
				userService.signup(user);
				
				String authKey = mailService.sendAuthMail(user.getUserEmail());
				user.setAuthKey(authKey);
				
				HashMap<String,String> map = new HashMap<String, String>();
				map.put("userEmail", user.getUserEmail());
				map.put("authKey", authKey);
				
				userService.setAuthKey(map);
				
				return "OK";
	}
	
	@ResponseBody
	@PostMapping("/signup/company")
	public String signup(@RequestBody Company company) {
		
				companyService.signup(company);
				
				return "OK";
	}
	
	@GetMapping("/signUpConfirm")
	public String signUpConfirm(String email, String authKey) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("userEmail", email);
		map.put("authKey", authKey);
		
		userService.emailCheck(map);
		
		return "redirect:/";
	}
	
	@GetMapping("/email")
	public String email() {
		return "email";
	}
	
	@ResponseBody
	@PostMapping("/find_id_co")
	public Company findCo(@RequestBody Company company) {
		
		Company item = companyService.findCo(company);
		
		return item;
	}
	@ResponseBody
	@PostMapping("/find_id_user")
	public User findUser(@RequestBody User user) {
		
		User item = userService.findUser(user);
		
		return item;
	}
	
	@ResponseBody
	@PostMapping("/find_pw_user")
	public boolean findPwUser(@RequestBody User user) {
		
		if(userService.findPwUser(user)) {
			return true;
		}
		
		return false;
	}
	
	@ResponseBody
	@PostMapping("/find_pw_co")
	public boolean findPwCo(@RequestBody Company company) {
		
		if(companyService.findPwCo(company)) {
			
			return true;
		}
		
		return false;
	}
	
	@ResponseBody
	@PostMapping("/change_pw_user")
	public String updatePwUser(@RequestBody User user) {
		
		userService.updatePwUser(user);
		
		return "OK";
	}
	@ResponseBody
	@PostMapping("/change_pw_co")
	public String updatePwCo(@RequestBody Company company) {
		
		companyService.updatePwCo(company);
		
		return "Ok";
	}
	
	
}
