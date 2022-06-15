package kr.ac.kopo.helpus.dao;

import java.util.List;

import kr.ac.kopo.helpus.model.Detail;
import kr.ac.kopo.helpus.util.Pager;

public interface DetailDao {

	List<Detail> search(Pager pager);

	void add(Detail item);

	Detail item(int coCode);

	void update(Detail item);

	int total(Pager pager);


}
