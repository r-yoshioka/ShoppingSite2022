package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.beans.UserReginstBean;
import jp.co.aforce.beans.UserUpdateBean;

public class UserMemberDAO extends DAO {

	public int check(UserReginstBean urb) throws Exception {

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"SELECT COUNT(*) FROM MEMBER_INFO_KSJ WHERE "
						+ "NAME = ? AND SEX = ? AND  BIRTH_YEAR = ? AND BIRTH_MONTH = ? AND BIRTH_DAY = ? "
						+ "AND JOB = ? AND PHONE_NUMBER = ? AND MAIL_ADDRESS = ? AND PASSWORD = ?");

		st.setString(1, urb.getName());
		st.setString(2, urb.getSex());
		st.setInt(3, urb.getBirthYear());
		st.setInt(4, urb.getBirthMonth());
		st.setInt(5, urb.getBirthDay());
		st.setString(6, urb.getJob());
		st.setString(7, urb.getPhoneNumber());
		st.setString(8, urb.getMailAddress());
		st.setString(9, urb.getPassword());

		ResultSet rs = st.executeQuery();

		int count = 0;
		while (rs.next()) {
			count = rs.getInt(1);
		}

		st.close();
		con.close();

		return count;
	}

	public int insert(UserReginstBean urb) throws Exception {

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"INSERT INTO MEMBER_INFO_KSJ VALUES(?, ?, ?, ?, ?, ?, ?, ?, ? )");

		st.setString(1, urb.getName());
		st.setString(2, urb.getSex());
		st.setInt(3, urb.getBirthYear());
		st.setInt(4, urb.getBirthMonth());
		st.setInt(5, urb.getBirthDay());
		st.setString(6, urb.getJob());
		st.setString(7, urb.getPhoneNumber());
		st.setString(8, urb.getMailAddress());
		st.setString(9, urb.getPassword());

		int line = st.executeUpdate();

		st.close();
		con.close();

		return line;
	}

	public UserUpdateBean search(String mailAddress, String password) throws Exception {

		UserUpdateBean uub = null;
		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM MEMBER_INFO_KSJ WHERE MAIL_ADDRESS = ? AND PASSWORD = ?");

		st.setString(1, mailAddress);
		st.setString(2, password);

		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			uub = new UserUpdateBean();
			uub.setName(rs.getString("name"));
			uub.setSex(rs.getString("sex"));
			uub.setBirthYear(rs.getInt("birth_year"));
			uub.setBirthMonth(rs.getInt("birth_month"));
			uub.setBirthDay(rs.getInt("birth_day"));
			uub.setJob(rs.getString("job"));
			uub.setPhoneNumber(rs.getString("phone_number"));
			uub.setMailAddress(rs.getString("mail_address"));
			uub.setPassword(rs.getString("password"));

		}
		st.close();
		con.close();

		return uub;
	}

	public int update(UserUpdateBean uub) throws Exception {

		int line = 0;
		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"UPDATE MEMBER_INFO_KSJ SET "
						+ " NAME =  ?,  SEX = ?, BIRTH_YEAR = ?, BIRTH_MONTH = ?,"
						+ " BIRTH_DAY = ?, JOB = ?, PHONE_NUMBER = ?, PASSWORD = ?"
						+ " WHERE MAIL_ADDRESS = ?");

		st.setString(1, uub.getName());
		st.setString(2, uub.getSex());
		st.setInt(3, uub.getBirthYear());
		st.setInt(4, uub.getBirthMonth());
		st.setInt(5, uub.getBirthDay());
		st.setString(6, uub.getJob());
		st.setString(7, uub.getPhoneNumber());
		st.setString(8, uub.getPassword());
		st.setString(9, uub.getMailAddress());

		line = st.executeUpdate();

		st.close();
		con.close();

		return line;
	}
}
