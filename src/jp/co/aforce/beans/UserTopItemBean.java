package jp.co.aforce.beans;

public class UserTopItemBean implements java.io.Serializable {

	private String itemId;
	private String name;
	private int price;
	private int number;
	private String info;

	public String getItemId() {
		return itemId;
	}

	public String getName() {
		return name;
	}

	public int getPrice() {
		return price;
	}

	public int getNumber() {
		return number;
	}

	public String getInfo() {
		return info;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public void setInfo(String info) {
		this.info = info;
	}



}
