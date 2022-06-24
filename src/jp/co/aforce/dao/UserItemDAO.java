package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jp.co.aforce.beans.UserTopBean;

public class UserItemDAO extends DAO {

	public List<UserTopBean> search(String keyword) throws Exception {

		List<UserTopBean> list = new ArrayList<>();
		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM ITEM_INFO_KSJ WHERE  NAME LIKE ?");

		st.setString(1, "%" + keyword + "%");

		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			UserTopBean utb = new UserTopBean();
			utb.setItemId(rs.getString("itemId"));
			utb.setName(rs.getString("name"));
			utb.setPrice(rs.getInt("price"));
			utb.setNumber(rs.getInt("number"));

			list.add(utb);
		}
		st.close();
		con.close();

		return list;
	}

}
