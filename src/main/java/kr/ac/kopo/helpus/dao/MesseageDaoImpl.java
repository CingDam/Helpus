package kr.ac.kopo.helpus.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.Messeage;


@Repository
public class MesseageDaoImpl implements MesseageDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Messeage item) {
		
		sql.insert("messeage.add", item);
	}

	@Override
	public int msgCk(String userId) {
		return sql.selectOne("messeage.msgCk",userId);
		
	}

	@Override
	public void updateMsgCk(int roomCode, int userCode) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("roomCode", roomCode);
		map.put("userId", userCode);
		
		sql.update("messeage.msgCkUpdate", map);
		
	}

	@Override
	public List<Messeage> list(int roomCode) {
		
		return sql.selectList("messeage.list",roomCode);
	}

}
