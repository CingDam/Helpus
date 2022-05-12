package kr.ac.kopo.helpus.service;

import java.util.List;

import kr.ac.kopo.helpus.model.Detail;

public interface DetailService {

	List<Detail> search(String keyword);

	void add(Detail item);

	Detail item(int coCode);

	List<Integer> keyList(int coCode);

}
