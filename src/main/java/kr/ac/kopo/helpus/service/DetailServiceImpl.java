package kr.ac.kopo.helpus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.DetailDao;
import kr.ac.kopo.helpus.model.Detail;

@Service
public class DetailServiceImpl implements DetailService {
	
	@Autowired
	DetailDao dao;

	@Override
	public List<Detail> search(String keyword) {
		
		return dao.search(keyword);
	}

}
