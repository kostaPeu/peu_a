package shopERP.basic.model;

import java.io.Serializable;
import java.util.List;

public class ListModelProductCode implements Serializable{
	private List<ProductCode> list;
	private int requestPage;
	private int totalPageCount;
	private int startPage;
	private int endPage;
	public List<ProductCode> getList() {
		return list;
	}
	public void setList(List<ProductCode> list) {
		this.list = list;
	}
	public int getRequestPage() {
		return requestPage;
	}
	public void setRequestPage(int requestPage) {
		this.requestPage = requestPage;
	}
	public int getTotalPageCount() {
		return totalPageCount;
	}
	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
}
