package kr.ac.kopo.helpus.service;

import java.util.List;

import kr.ac.kopo.helpus.model.Coinqury;
import kr.ac.kopo.helpus.model.Company;
import kr.ac.kopo.helpus.model.Schedule;

public interface CompanyService {

	boolean login(Company company);

	boolean checkId(String coId);

	void signup(Company company);

	List<Schedule> getSch(int coCode);

	List<Coinqury> getCoInqury(int coCode);

}
