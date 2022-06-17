package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.beans.UserLoginBean;

public class UserLoginDAO extends DAO {

	public UserLoginBean search(String mail_address, String password) throws Exception {

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM MEMBER_INFO_KSJ WHERE MAIL_ADDRESS=? and PASSWORD=?");

		st.setString(1, mail_address);
		st.setString(2, password);

		ResultSet rs = st.executeQuery();

		UserLoginBean ulb = new UserLoginBean();

		while (rs.next()) {
			ulb.setMailAddress(rs.getString("mail_address"));
			ulb.setName(rs.getString("name"));
			ulb.setPassword(rs.getString("password"));
		}

		st.close();
		con.close();

		return ulb;
	}
}
