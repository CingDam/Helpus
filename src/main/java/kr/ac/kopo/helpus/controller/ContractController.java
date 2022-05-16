package kr.ac.kopo.helpus.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.helpus.model.CoKey;
import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Contract;
import kr.ac.kopo.helpus.service.CoKeyService;
import kr.ac.kopo.helpus.service.ContractService;

@Controller
@RequestMapping("/contract")
public class ContractController {
	private final String path = "contract/";
	
	@Autowired
	ContractService contractService;
	@Autowired
	CoKeyService cokeywordService;
	
	@GetMapping("/add")
	public String contract(Model model,HttpSession session) {
		Company company = (Company) session.getAttribute("company");
		int coCode = company.getCoCode();
		
		List<CoKey> list = cokeywordService.list(coCode);
		
		model.addAttribute("list", list);
	
		return path + "add";
	}
	
	@PostMapping("/add")
	public String contract(Contract contract, HttpSession session) {
		Company company = (Company) session.getAttribute("company");
		contract.setCoCode(company.getCoCode());
		
		contractService.add(contract);
		
		return "redirect:list";
	}
	
	@GetMapping("list")
	public String list(Model model, HttpSession session) {
		Company company = (Company) session.getAttribute("company");
		int coCode = company.getCoCode();
		List<Contract> list = contractService.list(coCode);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
}
