package shopERP.basic.model;

import java.io.Serializable;

public class Search implements Serializable{
	private String searchKey;

	public String getSearchKey() {
		return searchKey;
	}
	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
}
