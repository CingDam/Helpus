package kr.ac.kopo.helpus.dao;

import java.util.List;

import kr.ac.kopo.helpus.model.Coinqury;
import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Detail;
import kr.ac.kopo.helpus.model.Schedule;

public interface CompanyDao {

	int login(Company company);

	int checkId(String coId);

	void signup(Company company);

	List<Schedule> getSch(int coCode);

	List<Coinqury> getCoInqury(int coCode);

	List<Company> getCompany(int coCode);

	void setCompany(Company company);

	List<Detail> search(String keyword);

}
