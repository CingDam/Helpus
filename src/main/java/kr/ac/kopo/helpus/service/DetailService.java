package kr.ac.kopo.helpus.service;

import java.util.List;

import kr.ac.kopo.helpus.model.Detail;
import kr.ac.kopo.helpus.model.DetailImage;

public interface DetailService {

	List<Detail> search(String keyword);

	void add(Detail item);

	Detail item(int coCode);

	void update(Detail item);

	List<DetailImage> imageList(int coCode);

	void detailImage_delete(int image_code);


}
