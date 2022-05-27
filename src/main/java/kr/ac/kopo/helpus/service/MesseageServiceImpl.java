package kr.ac.kopo.helpus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.MesseageDao;
import kr.ac.kopo.helpus.model.Messeage;



@Service
public class MesseageServiceImpl implements MesseageService {

	@Autowired
	MesseageDao dao;
	
	@Override
	public void add(Messeage item) {
		dao.add(item);

	}

	@Override
	public int msgCk(String userId) {
		
		return dao.msgCk(userId);
		
	}

	@Override
	public void updateMsgCk(int roomCode, int userCode) {
		dao.updateMsgCk(roomCode,userCode);
		
	}

	@Override
	public List<Messeage> list(int roomCode) {
	
		return dao.list(roomCode);
	}

}
