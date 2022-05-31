package kr.ac.kopo.helpus.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.Message;
import kr.ac.kopo.helpus.model.Room;

@Repository
public class ChatDaoImpl implements ChatDao {

	@Autowired
	SqlSession sql;

	@Override
	public Room getRoom(Room item) {
		return sql.selectOne("room.getRoom", item);
	}

	@Override
	public void add(Room item) {
		sql.insert("room.add", item);
	}

	@Override
	public List<Message> messageList(int roomCode) {
		return sql.selectList("room.messageList", roomCode);
	}

	@Override
	public Room getRoomInfo(int roomCode) {
		return sql.selectOne("room.getRoomInfo", roomCode);
	}

	@Override
	public void addMessage(Message msg) {
		sql.insert("room.addMessage", msg);
	}

	@Override
	public void msg_ck(Message item) {
		sql.update("room.msg_ck", item);
	}

	@Override
	public List<Room> roomList(int userCode) {
		return sql.selectList("room.roomList", userCode);
	}

	
}
