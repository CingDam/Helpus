package kr.ac.kopo.helpus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.CompanyDao;
import kr.ac.kopo.helpus.model.Coinqury;
import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Detail;
import kr.ac.kopo.helpus.model.Schedule;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	CompanyDao dao;
	
	@Override
	public boolean login(Company company) {
		if(dao.login(company) == 1) {
			return true;
		} else
			return false;
	}

	@Override
	public boolean checkId(String coId) {
		if(dao.checkId(coId) == 0) 
			return true;
		else 
			return false;
	}

	@Override
	public void signup(Company company) {
		dao.signup(company);
	}

	@Override
	public List<Schedule> getSch(int coCode) {
		return dao.getSch(coCode);
	}

	@Override
	public List<Coinqury> getCoInqury(int coCode) {
		return dao.getCoInqury(coCode);
	}

	@Override
	public List<Detail> search(String keyword) {
		
		return dao.search(keyword);
	}
}
