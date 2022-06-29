package jp.co.aforce.beans;

public class RegistBean implements java.io.Serializable {

	private String itemId;
	private String name;
	private String info;
	private int price;
	private int number;

	public String getItemId() {
		return itemId;
	}

	public String getName() {
		return name;
	}

	public String getInfo() {
		return info;
	}

	public int getPrice() {
		return price;
	}

	public int getNumber() {
		return number;
	}


	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public void setNumber(int number) {
		this.number = number;
	}

}
