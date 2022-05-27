package kr.ac.kopo.helpus.service;

import java.util.List;

import kr.ac.kopo.helpus.model.Room;

public interface RoomService {

	void add(Room item);

	Room item(int roomCode);

	List<Room> list(String userId);

	boolean getRoom(Room item);

}
