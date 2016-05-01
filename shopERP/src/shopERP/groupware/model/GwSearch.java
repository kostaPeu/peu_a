package shopERP.groupware.model;

public class GwSearch {
	private String type;
	private String word;
	
	public GwSearch(){}

	public GwSearch(String type, String word) {
		super();
		this.type = type;
		this.word = word;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	@Override
	public String toString() {
		return "Search [type=" + type + ", word=" + word + "]";
	}
	
	

}
