package kr.ac.kopo.helpus.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.Coinqury;
import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Schedule;

@Repository
public class CompanyDaoImpl implements CompanyDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public int login(Company company) {
		int result = sql.selectOne("company.login", company);
		System.out.println(result);
		return sql.selectOne("company.login", company);
	}

	@Override
	public int checkId(String coId) {
		System.out.println(coId);
		return sql.selectOne("company.checkId", coId);
	}

	@Override
	public void signup(Company company) {
		sql.insert("company.signup", company);
	}

	@Override
	public List<Schedule> getSch(int coCode) {
		return sql.selectList("company.getSch", coCode);
	}

	@Override
	public List<Coinqury> getCoInqury(int coCode) {
		return sql.selectList("company.getCoInqury", coCode);
	}

	@Override
	public List<Company> getCompany(int coCode) {
		return sql.selectOne("company.getCompany", coCode);
	}

	@Override
	public void setCompany(Company company) {
		sql.update("company.setCompany", company);
	}

}
