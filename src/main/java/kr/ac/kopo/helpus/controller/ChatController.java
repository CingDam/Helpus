package kr.ac.kopo.helpus.controller;

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

import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Message;
import kr.ac.kopo.helpus.model.Room;
import kr.ac.kopo.helpus.model.User;
import kr.ac.kopo.helpus.service.ChatService;
import kr.ac.kopo.helpus.service.CompanyService;

@Controller
@RequestMapping("/chat")
public class ChatController {
	private final String path = "chat/";
	
	@Autowired
	ChatService service;
	
	@Autowired
	CompanyService companyService;
	
	//테스트용jsp
	@GetMapping({"/",""})
	public String test(HttpSession session, Model model) {
		List<Company> company = companyService.list();
		model.addAttribute("company", company);
		
		User user = (User) session.getAttribute("user");
		List<Room> roomList = service.roomList(user.getUserCode());
		model.addAttribute("roomList", roomList);
		
		return path + "chat";
	}
	
	@ResponseBody
	@PostMapping("/{coCode}")
	public Integer chat(HttpSession session, @PathVariable int coCode) {
		User user = (User) session.getAttribute("user");
		
		Room item = new Room();
		item.setUserCode(user.getUserCode());
		item.setCoCode(coCode);
		
		if(service.getRoom(item)) {
			return item.getRoomCode();
		} else {
			service.add(item);
			service.getRoom(item);
			
			return item.getRoomCode();
		}
	}
	
	//@ResponseBody
	@GetMapping("/room/{roomCode}")
	public String room(@PathVariable int roomCode, Model model) {
		model.addAttribute("roomCode", roomCode);
		
		return path + "room";
	}
	
	@GetMapping("/chat_input")
	public String chat_input() {
		return path + "chat_input";
	}
	
	@ResponseBody
	@GetMapping("/get_msg/{roomCode}")
	public List<Message> get_msg(@PathVariable int roomCode) {
		List<Message> messages = service.messageList(roomCode);
		
		return messages;
	}
	
	@ResponseBody
	@PostMapping("/post_msg")
	public String post_msg(@RequestBody Message msg) {
		Room item = service.getRoomInfo(msg.getRoomCode());
		
		msg.setAdminCode(item.getAdminCode());
		msg.setCoCode(item.getCoCode());
		msg.setUserCode(item.getUserCode());
		
		service.addMessage(msg);
		
		return "OK";
	}
	
	@ResponseBody
	@PostMapping("/msg_ck")
	public String msg_ck(@RequestBody Message item) {
		service.msg_ck(item);
		
		return "OK";
	}
}
