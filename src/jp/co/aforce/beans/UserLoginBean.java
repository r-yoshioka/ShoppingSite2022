package jp.co.aforce.beans;

public class UserLoginBean implements java.io.Serializable {

	private String MEMBER_ID;
	private String NAME;
	private String PASSWORD;

	public String getId() {
		return MEMBER_ID;
	}

	public String getName() {
		return NAME;
	}

	public String getPassword() {
		return PASSWORD;
	}

	public void setId(String member_id) {
		this.MEMBER_ID = member_id;
	}

	public void setName(String name) {
		this.NAME = name;
	}

	public void setPassword(String password) {
		this.PASSWORD = password;
	}

}