package kr.ac.kopo.helpus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.helpus.model.Category;
import kr.ac.kopo.helpus.model.Keyword;
import kr.ac.kopo.helpus.service.AdminService;
import kr.ac.kopo.helpus.service.CategoryService;
import kr.ac.kopo.helpus.service.KeywordService;


@Controller
@RequestMapping("/admin")
public class AdminController {
	private final String path = "admin/";
	
	@Autowired
	AdminService service;
	@Autowired
	CategoryService cateService;
	@Autowired
	KeywordService keyService;
	
	@RequestMapping({"/",""})
	public String index() {
		return path + "index";
	}
	
	@GetMapping("/cate_manager")
	public String cate_key(Model model) {
		List<Category> cate = cateService.list();
		model.addAttribute("cate", cate);
		
		return path + "cate_manager";
	}
	
	@GetMapping("/key_manager/{cateCode}")
	public String key_manager(@PathVariable int cateCode, Model model, Keyword keyword) {
		Category cate = cateService.item(cateCode);
		model.addAttribute("cate", cate);
		
		keyword.setCateCode(cateCode);
		List<Keyword> key = keyService.list(keyword);
		model.addAttribute("key", key);
		
		return path + "key_manager";
	}
	
	@GetMapping("/cate_add")
	public String cate_add() {
		return path + "cate_add";
	}
	
	@PostMapping("/cate_add")
	public String cate_add(Category category) {
		cateService.add(category);
		
		return path + "cate_manager";
	}
	
}
