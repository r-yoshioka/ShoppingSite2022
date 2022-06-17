package jp.co.aforce.beans;

public class UserLoginBean implements java.io.Serializable {

	private String mailAddress;
	private String name;
	private String password;

	public String getMailAddress() {
		return mailAddress;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	public void setMailAddress(String mail_address) {
		this.mailAddress = mail_address;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}