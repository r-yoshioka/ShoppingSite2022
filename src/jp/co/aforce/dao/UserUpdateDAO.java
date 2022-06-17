package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.beans.UserUpdateBean;

public class UserUpdateDAO extends DAO {

	public int search(UserUpdateBean uub) throws Exception {

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM MEMBER_INFO_KSJ WHERE MAIL_ADDRESS = ?, PASSWORD = ?");

		st.setString(1, uub.getMailAddress());
		st.setString(2, uub.getPassword());

		ResultSet rs = st.executeQuery();
		int line = 0;

		while (rs.next()) {
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

		return line;
	}

	public int update(UserUpdateBean uub) throws Exception {

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"UPDATE MEMBER_INFO_KSJ SET "
						+ " NAME =  ?,  SEX = ?, BIRTH_YEAR = ?, BIRTH_MONTH = ?"
						+ "BIRTH_DAY = ?, JOB = ?, PHONE_NUMBER = ?, MAIL_ADDRESS = ?, PASSWORD = ?"
						+ "WHERE MAIL_ADDRESS = ?");

		st.setString(1, uub.getName());
		st.setString(2, uub.getSex());
		st.setInt(3, uub.getBirthYear());
		st.setInt(4, uub.getBirthMonth());
		st.setInt(5, uub.getBirthDay());
		st.setString(6, uub.getJob());
		st.setString(7, uub.getPhoneNumber());
		st.setString(8, uub.getMailAddress());
		st.setString(9, uub.getPassword());
		st.setString(10, uub.getMailAddress());

		int line = st.executeUpdate();
		//登録/更新した行を返す

		//1件以上の変更有
		if (line > 0) {
			line++;
		}

		st.close();
		con.close();

		//結果を返す。（trueかfalse）
		return line;
	}
}
