package kr.ac.kopo.helpus.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Keyword;
import kr.ac.kopo.helpus.service.KeywordService;

@Controller
@RequestMapping("/detail")
public class DetailController {
	
	@Autowired
	KeywordService keywordService;
	
	final private String path = "detail/";
	
	@ResponseBody
	@PostMapping("/keyword")
	public List<Keyword> keyList(@RequestBody Keyword keyword) {
		List<Keyword> list = keywordService.list(keyword);
		return list;
	}
	@ResponseBody
	@GetMapping("/co_key")
	public List<Integer> coKeyList(HttpSession session){
		
		Company co = (Company) session.getAttribute("company");
		
		int coCode = co.getCoCode();
		
		List<Integer> coKeyList = keywordService.keyList(coCode);
		
		return coKeyList;
	}
}
