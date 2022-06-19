package kr.ac.kopo.helpus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.helpus.model.Coinqury;
import kr.ac.kopo.helpus.service.CoInquryService;

@RestController
@RequestMapping("/co_inqury")
public class CoinquryController {
	
	@Autowired
	CoInquryService service;
	
	@PostMapping("/add")
	public String add(@RequestBody Coinqury item) {
		
		service.add(item);
		
		return "OK";
	}
}
