package jp.co.aforce.beans;

public class UserOrderBean {

	private String orderId;
	private String memberId;
	private String itemId;
	private int itemNumber;
	private int itemPrice;
	private String post;
	private String prefectures;
	private String address;
	private String payment;
	private String date;

	public String getOrderId() {
		return orderId;
	}

	public String getMemberId() {
		return memberId;
	}

	public String getItemId() {
		return itemId;
	}

	public int getItemNumber() {
		return itemNumber;
	}

	public int getItemPrice() {
		return itemPrice;
	}

	public String getPost() {
		return post;
	}

	public String getPrefectures() {
		return prefectures;
	}

	public String getAddress() {
		return address;
	}

	public String getPayment() {
		return payment;
	}

	public String getDate() {
		return date;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public void setItemNumber(int itemNumber) {
		this.itemNumber = itemNumber;
	}

	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public void setPrefectures(String prefectures) {
		this.prefectures = prefectures;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public void setDate(String date) {
		this.date = date;
	}
}
