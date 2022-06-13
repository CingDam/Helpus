package kr.ac.kopo.helpus.service;

import java.util.HashMap;
import java.util.List;

import kr.ac.kopo.helpus.model.Calendar;
import kr.ac.kopo.helpus.model.Contract;
import kr.ac.kopo.helpus.model.Schedule;

public interface CalendarService {

	List<Schedule> calList(int coCode);

	List<Schedule> schList(Schedule item);

}
