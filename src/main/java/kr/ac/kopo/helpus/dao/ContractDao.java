package kr.ac.kopo.helpus.dao;

import java.util.List;

import kr.ac.kopo.helpus.model.Contract;

public interface ContractDao {

	void add(Contract contract);

	List<Contract> list(int coCode);

}
