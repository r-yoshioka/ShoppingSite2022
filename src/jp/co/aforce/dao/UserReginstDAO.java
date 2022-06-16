package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import jp.co.aforce.beans.UserReginstBean;

public class UserReginstDAO extends DAO {

	public int insert(UserReginstBean urb) throws Exception {

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"INSERT INTO member_info_ksj VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ? )" );

		st.setString(1, urb.getId());
		st.setString(2, urb.getName());
		st.setString(3, urb.getSex());
		st.setInt(4, urb.getYear());
		st.setInt(5, urb.getMonth());
		st.setInt(6, urb.getDay());
		st.setString(7, urb.getJob());
		st.setString(8, urb.getPhone());
		st.setString(9, urb.getMail());
		st.setString(10, urb.getPassword());

		int line = st.executeUpdate();

		st.close();
		con.close();

		return line;
	}

}
