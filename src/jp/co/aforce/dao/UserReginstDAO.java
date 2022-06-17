package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.beans.UserReginstBean;

public class UserReginstDAO extends DAO {

	public int search(UserReginstBean urb) throws Exception {

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM MEMBER_INFO_KSJ WHERE "
						+ " NAME =  ? AND SEX = ? AND BIRTH_YEAR = ? AND BIRTH_MONTH = ? AND BIRTH_DAY = ? "
						+ "AND JOB = ? AND PHONE_NUMBER = ? AND MAIL_ADDRESS = ? AND  PASSWORD = ?");

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

		int line = 0;
		while (rs.next()) {
			line++;
		}
		return line;
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

}
