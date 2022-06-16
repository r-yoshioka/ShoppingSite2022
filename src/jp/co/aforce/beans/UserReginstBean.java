package jp.co.aforce.beans;

public class UserReginstBean implements java.io.Serializable {

	private String MEMBER_ID;
	private String NAME;
	private String SEX;
	private int BIRTH_YEAR;
	private int BIRTH_MONTH;
	private int BIRTH_DAY;
	private String JOB;
	private String PHONE_NUMBER;
	private String MAIL_ADDRESS;
	private String PASSWORD;

	public String getId() {
		return MEMBER_ID;
	}

	public String getName() {
		return NAME;
	}

	public String getSex() {
		return SEX;
	}

	public int getYear() {
		return BIRTH_YEAR;
	}

	public int getMonth() {
		return BIRTH_MONTH;
	}

	public int getDay() {
		return BIRTH_DAY;
	}

	public String getJob() {
		return JOB;
	}

	public String getPhone() {
		return PHONE_NUMBER;
	}

	public String getMail() {
		return MAIL_ADDRESS;
	}

	public String getPassword() {
		return PASSWORD;
	}

	public void setId(String mumber_id) {
		this.MEMBER_ID = mumber_id;
	}

	public void setLastName(String last_name) {
		this.NAME = last_name;
	}

	public void setSex(String sex) {
		this.SEX = sex;
	}

	public void setYear(int birth_year) {
		this.BIRTH_YEAR = birth_year;
	}

	public void setMonth(int birth_month) {
		this.BIRTH_MONTH = birth_month;
	}

	public void setDay(int birth_day) {
		this.BIRTH_DAY = birth_day;
	}

	public void setJob(String job) {
		this.JOB = job;
	}

	public void setPhone(String phone_number) {
		this.PHONE_NUMBER = phone_number;
	}

	public void setMail(String mail_address) {
		this.MAIL_ADDRESS = mail_address;
	}

	public void setFirstName(String password) {
		this.PASSWORD = password;
	}

}
