package kr.ac.kopo.helpus.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.ChatDao;
import kr.ac.kopo.helpus.model.Message;
import kr.ac.kopo.helpus.model.Room;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired
	ChatDao dao;

	@Override
	public boolean getRoom(Room item) {
		Room room = dao.getRoom(item);
		
		if(room != null) {
			item.setRoomCode(room.getRoomCode());
			item.setAdminCode(room.getAdminCode());
			
			return true;
		}
		
		return false;
	}

	@Override
	public void add(Room item) {
		dao.add(item);
	}

	@Override
	public List<Message> messageList(int roomCode) {
		return dao.messageList(roomCode);
	}

	@Override
	public Room getRoomInfo(int roomCode) {
		return dao.getRoomInfo(roomCode);
	}

	@Override
	public void addMessage(Message msg) {
		dao.addMessage(msg);
	}

	@Override
	public void msg_ck(Message item) {
		dao.msg_ck(item);
	}

	@Override
	public List<Room> roomList(HashMap<String, Object> map) {
		return dao.roomList(map);
	}

	
	
}
