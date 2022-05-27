package kr.ac.kopo.helpus.dao;

import java.util.List;

import kr.ac.kopo.helpus.model.Room;

public interface RoomDao {

	void add(Room item);

	Room item(int roomCode);

	List<Room> list(String userId);

	Room getRoom(Room item);

}
