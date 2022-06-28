package jp.co.aforce.beans;

public class ItemBean implements java.io.Serializable{

	private RegistBean registBean;
	private int count;

	public RegistBean getRegistBean() {
		return registBean;
	}

	public int getCount() {
		return count;
	}

	public void setRegistBean(RegistBean registBean) {
		this.registBean=registBean;
	}

	public void setCount(int count) {
		this.count=count;
	}

}
