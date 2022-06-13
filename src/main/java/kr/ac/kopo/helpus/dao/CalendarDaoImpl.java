package kr.ac.kopo.helpus.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.helpus.model.Calendar;
import kr.ac.kopo.helpus.model.Contract;
import kr.ac.kopo.helpus.model.Schedule;

@Repository
public class CalendarDaoImpl implements CalendarDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Schedule> calList(int coCode) {
		return sql.selectList("calendar.calList", coCode);
	}

	@Override
	public List<Schedule> schList(Schedule item) {
		return sql.selectList("calendar.schList", item);
	}

}
