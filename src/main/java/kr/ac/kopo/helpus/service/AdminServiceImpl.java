package kr.ac.kopo.helpus.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.dao.AdminDao;


@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao dao;

}
