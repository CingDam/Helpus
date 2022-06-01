package kr.ac.kopo.helpus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.CoKeywordDao;
import kr.ac.kopo.helpus.model.CoKey;

@Service
public class CoKeyServiceImpl implements CoKeyService {

	@Autowired
	CoKeywordDao dao;
	
	@Override
	public List<CoKey> list(int coCode) {
		return dao.list(coCode);
	}


}
