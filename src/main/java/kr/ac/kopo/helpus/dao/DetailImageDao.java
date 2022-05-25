package kr.ac.kopo.helpus.dao;

import java.util.List;

import kr.ac.kopo.helpus.model.DetailImage;

public interface DetailImageDao {

	void add(DetailImage image);

	List<DetailImage> list(int coCode);

	void delete(int image_code);

}
