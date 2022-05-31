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
	
}
