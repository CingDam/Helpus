package kr.ac.kopo.helpus.service;

import java.util.List;

import kr.ac.kopo.helpus.model.Contract;

public interface ContractService {

	void add(Contract contract);

	List<Contract> list(int coCode);

	Contract item(int contractCode);

}
