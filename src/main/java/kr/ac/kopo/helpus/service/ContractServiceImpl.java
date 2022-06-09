package kr.ac.kopo.helpus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.CalendarDao;
import kr.ac.kopo.helpus.dao.ContractDao;
import kr.ac.kopo.helpus.model.Contract;

@Service
public class ContractServiceImpl implements ContractService {

	@Autowired
	ContractDao dao;
	@Autowired
	CalendarDao calDao;
	
	@Override
	public void add(Contract contract) {
		dao.add(contract);
//		calDao.add();
	}

	@Override
	public List<Contract> list(int coCode) {
		return dao.list(coCode);
	}

	@Override
	public Contract item(int contractCode) {
		
		return dao.item(contractCode);
	}

}
