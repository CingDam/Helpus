package kr.ac.kopo.helpus.util;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

public class Pager {
	private int page = 1;
	private int perPage = 5;
	private int perGroup = 5;
	private float total;
	
	private int search = 0;
	private String keyword;
	
	private String order;
	private int orderMode;
	
	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public int getOrderMode() {
		return orderMode;
	}

	public void setOrderMode(int orderMode) {
		this.orderMode = orderMode;
	}

	public String getQuery() {
		
		if(search<1)
			return null;
		
		return "search=" + search + "&keyword=" + keyword;
	}
	
	public int getSearch() {
		return search;
	}

	public void setSearch(int search) {
		this.search = search;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getOffset() {
		return (page-1) * perPage;
	}
	
	public int getPrev() {
		
		
		return page <= perGroup ? 1 : ((page-1)/(perGroup)-1)*perGroup+1;
	}
	
	public int getNext() {
		
		int next = ((page-1)/(perGroup)+1)*perGroup+1;
		int last = getLast();
		
		return next < last ? next : last;
	}
	
	public List<Integer> getList(){
		
		AbstractList<Integer> list = new ArrayList<Integer>();
		
		int startpage = ((page-1)/perGroup)*perGroup+1;
		
		for(int index = startpage; index<(startpage+perGroup) && index<=getLast(); index ++)
		{
			list.add(index);
		}
		
		if(list.isEmpty())
			list.add(1);
		
		return list;
	}
	public int getLast(){
		
		int last= (int) Math.ceil(total/perPage);
		
		return last < 1 ? 1:last;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPerGroup() {
		return perGroup;
	}

	public void setPerGroup(int perGroup) {
		this.perGroup = perGroup;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public int getPerpage() {
		return perPage;
	}
	public void setPerpage(int perpage) {
		this.perPage = perpage;
	}
	
	
}
