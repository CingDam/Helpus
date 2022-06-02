package kr.ac.kopo.helpus.dao;

import java.util.List;

import kr.ac.kopo.helpus.model.Coinqury;
import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Schedule;
import kr.ac.kopo.helpus.util.Pager;

public interface CompanyDao {

	Company login(Company company);

	int checkId(String coId);

	void signup(Company company);

	List<Schedule> getSch(int coCode);

	List<Coinqury> getCoInqury(int coCode);

	List<Company> getCompany(int coCode);

	void setCompany(Company company);

	Company item(int coCode);

	void coUpdate(Company company);

	int pwCheck(Company company);

	void coPwUpdate(Company company);

	void login_day(int coCode);

	Company findCo(Company company);

	Company findPwCo(Company company);

	void updatePwCo(Company company);

	int total(Pager pager);

	List<Coinqury> getCoInqury(int coCode, Pager pager);

	List<Company> list();


}
