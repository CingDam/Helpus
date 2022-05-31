package kr.ac.kopo.helpus.dao;

import java.util.List;

import kr.ac.kopo.helpus.model.Message;
import kr.ac.kopo.helpus.model.Room;

public interface ChatDao {

	Room getRoom(Room item);

	void add(Room item);

	List<Message> messageList(int roomCode);

}
