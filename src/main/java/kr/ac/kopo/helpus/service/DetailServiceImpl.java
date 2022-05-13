package kr.ac.kopo.helpus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.helpus.dao.CokeyDao;
import kr.ac.kopo.helpus.dao.DetailDao;
import kr.ac.kopo.helpus.model.CoKey;
import kr.ac.kopo.helpus.model.Detail;

@Service
public class DetailServiceImpl implements DetailService {
	
	@Autowired
	DetailDao dao;
	@Autowired
	CokeyDao coKeyDao;

	@Override
	public List<Detail> search(String keyword) {
		
		return dao.search(keyword);
	}

	@Override
	@Transactional
	public void add(Detail item) {
		
		dao.add(item);
		if(item.getCoKey() != null) {
			for(CoKey coKey : item.getCoKey()) {
				coKey.setCoCode(item.getCoCode());
				coKeyDao.add(coKey);
			}
		}
	}

	@Override
	public Detail item(int coCode) {
		return dao.item(coCode);
	}



}
