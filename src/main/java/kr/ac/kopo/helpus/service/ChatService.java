package kr.ac.kopo.helpus.service;

import java.util.List;

import kr.ac.kopo.helpus.model.Message;
import kr.ac.kopo.helpus.model.Room;

public interface ChatService {

	boolean getRoom(Room item);

	void add(Room item);

	List<Message> messageList(int roomCode);

}
