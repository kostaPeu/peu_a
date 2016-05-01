package shopERP.groupware.model;

public class Search {
	private String type;
	private String word;
	
	public Search(){}

	public Search(String type, String word) {
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
