package jp.co.aforce.beans;

public class UserUpdateBean implements java.io.Serializable {

	private String name;
	private String sex;
	private int birthYear;
	private int birthMonth;
	private int birthDay;
	private String job;
	private String phoneNumber;
	private String mailAddress;
	private String password;

	public String getName() {
		return name;
	}

	public String getSex() {
		return sex;
	}

	public int getBirthYear() {
		return birthYear;
	}

	public int getBirthMonth() {
		return birthMonth;
	}

	public int getBirthDay() {
		return birthDay;
	}

	public String getJob() {
		return job;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public String getMailAddress() {
		return mailAddress;
	}

	public String getPassword() {
		return password;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public void setBirthYear(int birth_year) {
		this.birthYear = birth_year;
	}

	public void setBirthMonth(int birth_month) {
		this.birthMonth = birth_month;
	}

	public void setBirthDay(int birth_day) {
		this.birthDay = birth_day;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public void setPhoneNumber(String phone_number) {
		this.phoneNumber = phone_number;
	}

	public void setMailAddress(String mail_address) {
		this.mailAddress = mail_address;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
