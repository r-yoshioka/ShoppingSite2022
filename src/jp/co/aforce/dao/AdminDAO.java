package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.beans.AdminBean;


public class AdminDAO extends DAO{
	public AdminBean search(String id, String password)throws Exception{



		Connection con=getConnection();

		PreparedStatement st;
		st=con.prepareStatement(
				"SELECT * FROM login WHERE id=? and password=?" );

		st.setString(1, id);
		st.setString(2, password);

		ResultSet rs=st.executeQuery();

		AdminBean ab = new AdminBean();

		while (rs.next()) {
			ab.setId(rs.getString("id"));
			ab.setName(rs.getString("name"));
			ab.setPassword(rs.getString("password"));
		}

		st.close();
		con.close();
		return ab;
	}



}
