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
	@ResponseBody
	@GetMapping({"/",""})
	public List<Room> test(HttpSession session) {
		User user = (User) session.getAttribute("user");
		Company company = (Company) session.getAttribute("company");
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		if(user != null && company == null) {
			List<Company> companyList = companyService.list();
			
			map.put("member", "user");
			map.put("userCode", user.getUserCode());
			
			List<Room> roomList = service.roomList(map);
			return roomList;
		}
		if(user == null && company != null) {			
			map.put("member", "company");
			map.put("coCode", company.getCoCode());
			
			List<Room> roomList = service.roomList(map);
			
			return  roomList;
		}
		
		return null;
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
	
	@GetMapping("/chat_input_co")
	public String chat_input_co() {
		return path + "chat_input_co";
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
