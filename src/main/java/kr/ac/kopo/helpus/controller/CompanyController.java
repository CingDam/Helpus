package kr.ac.kopo.helpus.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.helpus.model.Coinqury;
import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Schedule;
import kr.ac.kopo.helpus.service.CompanyService;

@RestController
@RequestMapping("/company")
public class CompanyController {
	
	@Autowired
	CompanyService service;
	
	@GetMapping("/get_sch")
	public List<Schedule> schedule(HttpSession session){
		Company company = (Company) session.getAttribute("company");
		
		int coCode = company.getCoCode();
		
		List<Schedule> schedule = service.getSch(coCode);
		
		return schedule;
	}
	
	@GetMapping("/get_coinqury")
	public List<Coinqury> coinqury(HttpSession session){
		Company company = (Company) session.getAttribute("company");
		
		int coCode = company.getCoCode();
		
		List<Coinqury> coinqury = service.getCoinqury(coCode);
		
		return coinqury;
	}
	
}
