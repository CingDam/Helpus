package kr.ac.kopo.helpus.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.Calendar;

@Repository
public class CalendarDaoImpl implements CalendarDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Calendar> calList() {
		return sql.selectList("calendar.calList");
	}

}
