package kr.ac.kopo.helpus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.helpus.model.Calendar;
import kr.ac.kopo.helpus.service.CalendarService;

@Controller
@RequestMapping("/calendar")
public class CalendarController {

	@Autowired
	CalendarService service;
	
	@PostMapping("/calList")
	public String calList(Model model){
		List<Calendar> calendar = service.calList();
		model.addAttribute("calList", calendar);
		
		return "pageJsonReport";
	}
}
