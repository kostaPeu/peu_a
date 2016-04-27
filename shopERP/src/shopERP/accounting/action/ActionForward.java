package shopERP.accounting.action;

public class ActionForward {
	private boolean inRedirect;
	private String path;
	
	public ActionForward(){}

	public ActionForward(boolean inRedirect, String path) {
		super();
		this.inRedirect = inRedirect;
		this.path = path;
	}

	public boolean isInRedirect() {
		return inRedirect;
	}

	public void setInRedirect(boolean inRedirect) {
		this.inRedirect = inRedirect;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	@Override
	public String toString() {
		return "ActionForward [inRedirect=" + inRedirect + ", path=" + path
				+ "]";
	}	
	
}
