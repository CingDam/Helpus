package kr.ac.kopo.helpus.service;

import java.util.List;

import kr.ac.kopo.helpus.model.Coinqury;
import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Schedule;
import kr.ac.kopo.helpus.model.User;
import kr.ac.kopo.helpus.util.Pager;

public interface CompanyService {

	boolean login(Company company);

	boolean checkId(String coId);

	void signup(Company company);

	List<Schedule> getSch(int coCode);

	List<Coinqury> getCoInqury(int coCode, Pager pager);

	Company item(int coCode);

	void coUpdate(Company company);

	boolean pwCheck(Company company);

	void coPwUpdate(Company company);

	Company findCo(Company company);

	boolean findPwCo(Company company);

	void updatePwCo(Company company);

}
