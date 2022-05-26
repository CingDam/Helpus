package kr.ac.kopo.helpus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.RoomDao;
import kr.ac.kopo.helpus.model.Room;


@Service
public class RoomServiceImpl implements RoomService {
	
	@Autowired
	RoomDao dao;

	@Override
	public void add(Room item) {
		
		dao.add(item);
	}

	@Override
	public Room item(int roomCode) {

		return dao.item(roomCode);
	}

	@Override
	public List<Room> list(String userId) {
		
		return dao.list(userId);
	}

	@Override
	public boolean getRoom(Room item) {
		Room room = dao.getRoom(item);
		
		if(room != null) {
			item.setRoomId(room.getRoomId());
			
			return true;
		}
		return false;
	}

}
