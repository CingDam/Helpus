package kr.ac.kopo.helpus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.helpus.model.Messeage;
import kr.ac.kopo.helpus.service.MesseageService;

@RestController
@RequestMapping("/msg")
public class MesseageController {
	@Autowired
	MesseageService service;
	
	@GetMapping("/get_msg/{roomCode}")
	public List<Messeage> getMsg(@PathVariable int roomCode){
		List<Messeage> list = service.list(roomCode);
		
		return list;
	}
	
	@PostMapping("/post_msg")
	public String postMsg(@RequestBody Messeage item) {
		
		service.add(item);
		
		return "success";
		
	}
	@PostMapping("/msg_ck")
	public String msgCk(@RequestBody Messeage item) {
		service.updateMsgCk(item.getRoomId(),item.getUserCode());
		return "success";
	}
}
