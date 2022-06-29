package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.beans.UserOrderBean;

public class UserOrderDAO extends DAO {

	public UserOrderBean search(String name, String mailAddress) throws Exception {

		UserOrderBean uob = null;
		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"SELECT MEMBER_ID FROM MEMBER_INFO_KSJ WHERE NAME = ? AND MAIL_ADDRESS = ?");

		st.setString(1, name);
		st.setString(2, mailAddress);

		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			uob = new UserOrderBean();
			uob.setMemberId(rs.getString("memberId"));
		}
		st.close();
		con.close();

		return uob;
	}

	public int insert(UserOrderBean uob) throws Exception {

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"INSERT INTO ORDER_INFO_KSJ VALUES(?, ?, 'I1111', 2, 1500, ?, ?, ?, ?, ? )");

		st.setString(1, uob.getOrderId());
		st.setString(2, uob.getMemberId());
		st.setString(3, uob.getPost());
		st.setString(4, uob.getPrefectures());
		st.setString(5, uob.getAddress());
		st.setString(6, uob.getPayment());
		st.setString(7, uob.getDate());

		int line = st.executeUpdate();

		st.close();
		con.close();

		return line;
	}

}
