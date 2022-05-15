package kr.ac.kopo.helpus.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.helpus.model.Category;
import kr.ac.kopo.helpus.model.CoKey;
import kr.ac.kopo.helpus.model.Coinqury;
import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Detail;
import kr.ac.kopo.helpus.model.Schedule;
import kr.ac.kopo.helpus.service.CategoryService;
import kr.ac.kopo.helpus.service.CompanyService;
import kr.ac.kopo.helpus.service.DetailService;
import kr.ac.kopo.helpus.service.KeywordService;
import kr.ac.kopo.helpus.service.UserService;
import kr.ac.kopo.helpus.util.SetCoKey;

//@RestController (테스트 끝나면 주석처리 지울 것)
@Controller
@RequestMapping("/company")
public class CompanyController {
	private final String path = "company/";
	
	@Autowired
	CompanyService service;
	@Autowired
	DetailService detailService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	KeywordService keywordService;
	@Autowired
	UserService userService;
	
	//스케쥴 관리(사업자코드로 계약테이블에 조인해서 일정 뽑아오기)
	@GetMapping("/get_sch")
	public List<Schedule> schedule(HttpSession session){
		Company company = (Company) session.getAttribute("company");
		
		int coCode = company.getCoCode();
		
		List<Schedule> schedule = service.getSch(coCode);
		
		return schedule;
	}
	//사업자 문의글
	@GetMapping("/get_coinqury")
	public List<Coinqury> coInqury(HttpSession session){
		Company company = (Company) session.getAttribute("company");
		
		int coCode = company.getCoCode();
		
		List<Coinqury> coInqury = service.getCoInqury(coCode);
		
		return coInqury;
	}
	
	@GetMapping("/mypage")
	public String mypage() {
		return path + "mypage";
	}
	
	@GetMapping("/coUpdate")
	public String coUpdate(Model model, HttpSession session) {
		Company item = (Company) session.getAttribute("company");
		System.out.println(item.getCoCode());
		System.out.println(item.getCoId());
		
		model.addAttribute("item", item);
		
		return path + "coUpdate";
	}
	
	@PostMapping("/coUpdate")
	public String coUpdate(Company company, HttpSession session) {
		Company item = (Company) session.getAttribute("company");
		
		company.setCoCode(item.getCoCode());
		
		service.coUpdate(company);
		
		return "redirect:./mypage";
	}
	
	@GetMapping("/pwCheck")
	public String pwCheck() {
		return path + "pwCheck";
	}
	
	@PostMapping("/pwCheck")
	public String pwCheck(HttpSession session, Company company) {
		Company item = (Company) session.getAttribute("company");
		
		company.setCoId(item.getCoId());
		
		if(service.pwCheck(company))
			return path + "coPwUpdate";
		else
			return path + "FAIL";
	}
	
	@PostMapping("/coPwUpdate")
	public String coPwUpdate(HttpSession session, Company company) {
		Company item = (Company) session.getAttribute("company");
		
		company.setCoCode(item.getCoCode());
		
		service.coPwUpdate(company);
		
		session.setAttribute("msg", "비밀번호 변경으로 인해 다시 로그인 해주세요");
		return "redirect:../";
	}
	
	@GetMapping("/detail_add")
	public String detaillAdd(Model model) {
		
		List<Category> cateList = categoryService.list();
		
		model.addAttribute("cateList",cateList);
		
		return path + "detail_add";
	}
	@PostMapping("/detail_add")
	public String detailAdd(Detail item,HttpSession session,@RequestParam("keyCode") List<Integer> keyCode,int cateCode)  {
		
		try {
			Company co = (Company) session.getAttribute("company");
			SetCoKey<CoKey> setCoKey = new SetCoKey<>();
			List<CoKey> coKey = setCoKey.setCode(keyCode,cateCode,CoKey.class);
			System.out.println(coKey);
			item.setCoKey(coKey);
			item.setCoCode(co.getCoCode());
			detailService.add(item);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return "redirect:..";
	}
	@GetMapping("/coDetailUpdate")
	public String detailUpdate(HttpSession session,Model model) {
		Company co = (Company) session.getAttribute("company");
		List<Category> cateList = categoryService.list();
		int coCode = co.getCoCode();
		Detail item = detailService.item(coCode);
		model.addAttribute("item",item);
		model.addAttribute("cateList",cateList);
		
		return path + "detail_update";
	}
	@PostMapping("/coDetailUpdate")
	public String detailUpdate(Detail item,HttpSession session,@RequestParam("keyCode") List<Integer> keyCode,int cateCode) {
		
		try {
			Company co = (Company) session.getAttribute("company");
			SetCoKey<CoKey> setCoKey = new SetCoKey<>();
			List<CoKey> coKey = setCoKey.setCode(keyCode,cateCode,CoKey.class);
			System.out.println(coKey);
			item.setCoKey(coKey);
			item.setCoCode(co.getCoCode());
			detailService.update(item);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("실패");
		}
		
		return "redirect:..";
	}
}
