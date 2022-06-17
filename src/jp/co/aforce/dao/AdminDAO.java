package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.beans.AdminBean;

public class AdminDAO extends DAO {
	public AdminBean search(String member_id, String password) throws Exception {

		//DBとの接続
		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement(
				"SELECT * FROM member_info_ksj WHERE member_id=? and password=?");

		//SQLパラメータ設定
		st.setString(1, member_id);
		st.setString(2, password);

		//SQLの実行
		ResultSet rs = st.executeQuery();

		AdminBean ab = new AdminBean();

		while (rs.next()) {
			ab.setId(rs.getString("member_id"));
			ab.setName(rs.getString("name"));
			ab.setPassword(rs.getString("password"));
		}

		st.close();
		con.close();
		return ab;
	}
}