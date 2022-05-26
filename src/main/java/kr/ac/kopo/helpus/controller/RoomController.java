package kr.ac.kopo.helpus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.helpus.model.Room;
import kr.ac.kopo.helpus.service.RoomService;



@Controller
@RequestMapping("/chat")
public class RoomController {
	
	private final String path = "chat/";
	
	@Autowired
	RoomService service;
	
	@GetMapping("/{roomCode}")
	public String chat(@PathVariable int roomCode,Model model) {
		Room room = service.item(roomCode);
		model.addAttribute("room",room);
		return "chat";
	}
	@GetMapping("/chat_input")
	public String chat_input() {
		
		return path + "chat_input";
	}
}
