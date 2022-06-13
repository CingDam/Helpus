package kr.ac.kopo.helpus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.helpus.dao.CalendarDao;
import kr.ac.kopo.helpus.dao.CompanyDao;
import kr.ac.kopo.helpus.dao.ContractDao;
import kr.ac.kopo.helpus.model.Contract;

@Service
public class ContractServiceImpl implements ContractService {

	@Autowired
	ContractDao dao;
	@Autowired
	CompanyDao coDao;
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

	@Override
	@Transactional
	public void update(Contract item) {
		dao.update(item);
		coDao.delete_coInqury(item.getCoInquryCode());
	}

	@Override
	public Object list_reserv(int coCode) {
		return dao.listReserv(coCode);
	}

}
