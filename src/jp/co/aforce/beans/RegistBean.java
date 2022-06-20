package jp.co.aforce.beans;

public class RegistBean implements java.io.Serializable {

	private String item_id;
	private String name;
	private int price;
	private int number;

	public String getItemId() {
		return item_id;
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

	public void setItemId(String item_id) {
		this.item_id = item_id;
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

}
