package kr.ac.kopo.helpus.service;

import java.util.List;

import kr.ac.kopo.helpus.model.Keyword;

public interface KeywordService {

	List<Keyword> list(Keyword keyword);

	List<Integer> keyList(int coCode);

}
