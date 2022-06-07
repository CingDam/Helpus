package kr.ac.kopo.helpus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.KeywordDao;
import kr.ac.kopo.helpus.model.Keyword;

@Service
public class KeywordServiceImpl implements KeywordService {
	
	@Autowired
	KeywordDao dao;
	
	@Override
	public List<Keyword> list(Keyword keyword) {
		int cateCode = keyword.getCateCode();
		return dao.list(cateCode);
	}

	@Override
	public List<Integer> keyList(int coCode) {
		
		return dao.keyList(coCode);
	}

	@Override
	public List<Keyword> mostList() {
		
		return dao.mostList();
	}

}
