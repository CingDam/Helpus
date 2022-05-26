package kr.ac.kopo.helpus.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.Room;


@Repository
public class RoomDaoImpl implements RoomDao{
	@Autowired
	SqlSession sql;
	@Override
	public void add(Room item) {
		
		sql.insert("room.add",item);
	}
	@Override
	public Room item(int roomCode) {
		return sql.selectOne("room.item", roomCode);
	}
	@Override
	public List<Room> list(String userId) {
		// TODO Auto-generated method stub
		return sql.selectList("room.list", userId);
	}
	@Override
	public Room getRoom(Room item) {
		return sql.selectOne("room.getRoom", item);
	}

}
