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
		return sql.selectOne("company.login", company);
	}

	@Override
	public int checkId(String coId) {
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
	public List<Coinqury> getCoinqury(int coCode) {
		return sql.selectList("company.getCoinqury", coCode);
	}

}
