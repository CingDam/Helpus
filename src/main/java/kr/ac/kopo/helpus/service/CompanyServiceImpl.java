package kr.ac.kopo.helpus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.CompanyDao;
import kr.ac.kopo.helpus.model.Coinqury;
import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Schedule;
import kr.ac.kopo.helpus.util.Pager;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	CompanyDao dao;

	@Override
	public boolean login(Company company) {
		Company item = dao.login(company);
		if (item != null) {
			dao.login_day(item.getCoCode());
			company.setCoCode(item.getCoCode());
			company.setCoEmail(item.getCoEmail());
			company.setCoName(item.getCoName());
			company.setCoAddress(item.getCoAddress());
			company.setCoAuth(item.getCoAuth());
			company.setCoPhone(item.getCoPhone());
			company.setCoRegNum(item.getCoRegNum());
			company.setCoPw(null);

			return true;
		} else
			return false;
	}

	@Override
	public boolean checkId(String coId) {
		if (dao.checkId(coId) == 0)
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
	public List<Coinqury> getCoInqury(int coCode,Pager pager) {
		
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.getCoInqury(coCode,pager);
	}

	@Override
	public Company item(int coCode) {
		return dao.item(coCode);
	}

	@Override
	public void coUpdate(Company company) {
		dao.coUpdate(company);
	}

	@Override
	public boolean pwCheck(Company company) {
		if (dao.pwCheck(company) == 1)
			return true;
		else
			return false;
	}

	@Override
	public void coPwUpdate(Company company) {
		dao.coPwUpdate(company);

	}

	@Override
	public Company findCo(Company company) {
		return dao.findCo(company);
		
	}

	@Override
	public boolean findPwCo(Company company) {
		Company item = dao.findPwCo(company);
		
		if(item != null) {
			return true;
		}
		return false;
	}

	@Override
	public void updatePwCo(Company company) {
		
		dao.updatePwCo(company);
		
	}

}
