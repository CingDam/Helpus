package kr.ac.kopo.helpus.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.CalendarDao;
import kr.ac.kopo.helpus.model.Calendar;
import kr.ac.kopo.helpus.model.Contract;
import kr.ac.kopo.helpus.model.Schedule;

@Service
public class CalendarServiceImpl implements CalendarService {

	@Autowired
	CalendarDao dao;
	
	@Override
	public List<Calendar> calList(int coCode) {
		return dao.calList(coCode);
	}

	@Override
	public List<Contract> schList(Schedule item) {
		return dao.schList(item);
	}
}
