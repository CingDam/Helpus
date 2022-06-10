package kr.ac.kopo.helpus.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.helpus.model.CoKey;
import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Contract;
import kr.ac.kopo.helpus.model.Message;
import kr.ac.kopo.helpus.service.ChatService;
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
	@Autowired
	ChatService chatService;
	
	@ResponseBody
	@PostMapping("/add")
	public Contract contract(@RequestBody Contract contract, HttpSession session) {
		Company company = (Company) session.getAttribute("company");
		contract.setCoCode(company.getCoCode());
		contractService.add(contract);
		
		return contract;
	}
	
	@GetMapping("list")
	public String list(Model model, HttpSession session) {
		Company company = (Company) session.getAttribute("company");
		int coCode = company.getCoCode();
		List<Contract> list = contractService.list(coCode);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/view/{contractCode}")
	public String view(@PathVariable int contractCode,Model model) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		Contract contract = contractService.item(contractCode);
		List<CoKey> coKey = cokeywordService.list(contract.getCoCode());
		Message msg = chatService.getOneMsg(contractCode);
		
		map.put("contract", contract);
		map.put("coKey", coKey);
		map.put("msg", msg);
		
		model.addAttribute("item",map);
		return path + "view";
	}
}
