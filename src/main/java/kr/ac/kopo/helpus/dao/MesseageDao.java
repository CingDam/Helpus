package kr.ac.kopo.helpus.dao;

import java.util.List;

import kr.ac.kopo.helpus.model.Messeage;

public interface MesseageDao {

	void add(Messeage item);

	List<Messeage> list(int roomCode);

	int msgCk(String userId);

	void updateMsgCk(int roomCode, int userCode);

}
