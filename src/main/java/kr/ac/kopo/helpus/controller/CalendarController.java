package kr.ac.kopo.helpus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.helpus.model.Calendar;
import kr.ac.kopo.helpus.model.Contract;
import kr.ac.kopo.helpus.model.Schedule;
import kr.ac.kopo.helpus.service.CalendarService;

@Controller
@RequestMapping("/calendar")
public class CalendarController {

	@Autowired
	CalendarService service;
	
	@ResponseBody
	@PostMapping("/calList/{coCode}")
	public List<Calendar> calList(Model model, @PathVariable int coCode){
		List<Calendar> calendar = service.calList(coCode);
		model.addAttribute("calList", calendar);

		return calendar;
	}
	
	@ResponseBody
	@PostMapping("/sch")
	public List<Contract> schedule(@RequestBody Schedule item){
		List<Contract> schList = service.schList(item);
		
		return schList;
	}
}
