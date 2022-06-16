package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.beans.UserLoginBean;

public class UserLoginDAO extends DAO {

	public UserLoginBean search(String MEMBER_ID, String PASSWORD
			) throws Exception {

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM member_info_ksj WHERE MEMBER_ID=? and PASSWORD=?");

		st.setString(1, MEMBER_ID);
		st.setString(2, PASSWORD);

		ResultSet rs = st.executeQuery();

		UserLoginBean ulb = new UserLoginBean();

		while (rs.next()) {
			ulb.setId(rs.getString("member_id"));
			ulb.setName(rs.getString("name"));
			ulb.setPassword(rs.getString("password"));
		}

		st.close();
		con.close();

		return ulb;
	}
}
