package jp.co.aforce.beans;

public class AdminBean implements java.io.Serializable {

	//ログイン
	private String adminId;
	private String name;
	private String password;

	//ログイン
	public String getAdminId() {
		return adminId;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	//ログイン
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}