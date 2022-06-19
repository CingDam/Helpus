package kr.ac.kopo.helpus.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.CoInquryDao;
import kr.ac.kopo.helpus.model.Coinqury;

@Service
public class CoInquryServiceImpl implements CoInquryService {
	
	@Autowired
	CoInquryDao dao;
	
	@Override
	public void add(Coinqury item) {
		
		dao.add(item);

	}

}
