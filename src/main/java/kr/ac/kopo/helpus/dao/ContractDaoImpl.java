package kr.ac.kopo.helpus.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.Contract;

@Repository
public class ContractDaoImpl implements ContractDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Contract contract) {
		sql.insert("contract.add", contract);
	}

	@Override
	public List<Contract> list(int coCode) {
		return sql.selectList("contract.list", coCode);
	}

	@Override
	public Contract item(int contractCode) {
		
		return sql.selectOne("contract.item", contractCode);
	}

}
