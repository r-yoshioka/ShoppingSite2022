package jp.co.aforce.beans;

public class ItemBean implements java.io.Serializable{

	private RegistBean registBean;
	private int count;
	private int sum;

	public RegistBean getRegistBean() {
		return registBean;
	}

	public int getCount() {
		return count;
	}

	public int getSum() {
		return sum;
	}

	public void setRegistBean(RegistBean registBean) {
		this.registBean=registBean;
	}

	public void setCount(int count) {
		this.count=count;
	}

	public void setSum(int sum) {
		this.sum=sum;
	}

}
