package jp.co.aforce.beans;

public class AdminBean implements java.io.Serializable {

	//ログイン
	private String member_id;
	private String name;
	private String password;

	//ログイン
	public String getId() {
		return member_id;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	//ログイン
	public void setId(String member_id) {
		this.member_id = member_id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}