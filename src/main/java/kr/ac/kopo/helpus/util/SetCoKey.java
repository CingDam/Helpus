package kr.ac.kopo.helpus.util;

import java.util.ArrayList;
import java.util.List;

import kr.ac.kopo.helpus.model.CoKey;

public class SetCoKey<T extends CoKey> {

	public List<T> setCode(List<Integer> keyCode, int cateCode, Class<T> type) throws Exception {
		List<T> result = new ArrayList<>();
		
		for(int KeyNum : keyCode) {
			T item = type.newInstance();
			item.setCateCode(cateCode);
			item.setKeyCode(KeyNum);
			result.add(item);
		}
		
		return result;
	}
	
}
