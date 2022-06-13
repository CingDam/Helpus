package kr.ac.kopo.helpus.dao;

import java.util.HashMap;
import java.util.List;

import kr.ac.kopo.helpus.model.Calendar;
import kr.ac.kopo.helpus.model.Contract;
import kr.ac.kopo.helpus.model.Schedule;

public interface CalendarDao {

	List<Schedule> calList(int coCode);

	List<Schedule> schList(Schedule item);

}
