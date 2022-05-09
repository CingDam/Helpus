package kr.ac.kopo.helpus.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.helpus.model.Coinqury;
import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Schedule;
import kr.ac.kopo.helpus.service.CompanyService;

//@RestController (테스트 끝나면 주석처리 지울 것)
@Controller
@RequestMapping("/company")
public class CompanyController {
	private final String path = "company/";
	
	@Autowired
	CompanyService service;
	
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
	
}
