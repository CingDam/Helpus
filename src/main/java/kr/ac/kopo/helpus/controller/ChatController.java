package kr.ac.kopo.helpus.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.helpus.model.Room;
import kr.ac.kopo.helpus.model.User;
import kr.ac.kopo.helpus.service.RoomService;

@Controller
@RequestMapping("/chat")
public class ChatController {
	private final String path = "chat/";
	
	@Autowired
	RoomService roomService;
	
	@GetMapping("/createRoom/{coCode}")
	public String createRoom(HttpSession session, @PathVariable int coCode) {
		User user = (User) session.getAttribute("user");
		int userCode = user.getUserCode();
		
		Room item = new Room();
		item.setCoCode(coCode);
		item.setUserCode(userCode);
		
		roomService.add(item);
		return "";
	}
}
