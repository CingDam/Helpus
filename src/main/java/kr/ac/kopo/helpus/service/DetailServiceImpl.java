package kr.ac.kopo.helpus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.helpus.dao.CokeyDao;
import kr.ac.kopo.helpus.dao.DetailDao;
import kr.ac.kopo.helpus.dao.DetailImageDao;
import kr.ac.kopo.helpus.model.CoKey;
import kr.ac.kopo.helpus.model.DetailImage;
import kr.ac.kopo.helpus.util.Pager;
import kr.ac.kopo.helpus.model.Detail;

@Service
public class DetailServiceImpl implements DetailService {
	
	@Autowired
	DetailDao dao;
	@Autowired
	CokeyDao coKeyDao;
	@Autowired
	DetailImageDao detailImageDao;

	@Override
	public List<Detail> search(Pager pager) {
		
		return dao.search(pager);
	}

	@Override
	@Transactional
	public void add(Detail item) {
		
		dao.add(item);
		if(item.getCoKey() != null) {
			for(CoKey coKey : item.getCoKey()) {
				coKey.setCoCode(item.getCoCode());
				coKeyDao.add(coKey);
			}
		}
		
		if(item.getImages() != null) {
			for(DetailImage image : item.getImages()) {
				image.setCoCode(item.getCoCode());
				detailImageDao.add(image);
			}
		}
	}

	@Override
	public Detail item(int coCode) {
		return dao.item(coCode);
	}

	@Override
	@Transactional
	public void update(Detail item) {
		dao.update(item);
		if(item.getCoKey() != null) {
			for(CoKey coKey : item.getCoKey()) {
				coKey.setCoCode(item.getCoCode());
				coKeyDao.add(coKey);
			}
		}
		
		if(item.getImages() != null) {
			for(DetailImage image : item.getImages()) {
				image.setCoCode(item.getCoCode());
				detailImageDao.add(image);
			}
		}
		
	}

	@Override
	public List<DetailImage> imageList(int coCode) {
		return detailImageDao.list(coCode);
	}

	@Override
	public void detailImage_delete(int image_code) {
		detailImageDao.delete(image_code);
	}



}
