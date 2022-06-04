package kr.ac.kopo.helpus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.CalendarDao;
import kr.ac.kopo.helpus.model.Calendar;

@Service
public class CalendarServiceImpl implements CalendarService {

	@Autowired
	CalendarDao dao;
	
	@Override
	public List<Calendar> calList() {
		return dao.calList();
	}

}
