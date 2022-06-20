package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.beans.AdminBean;
import jp.co.aforce.beans.RegistBean;

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

	//商品登録DAO
	public int insert(RegistBean rb) throws Exception {

		//DBとの接続
		Connection con = getConnection();

		//データの追加処理
		PreparedStatement st = con.prepareStatement(
				"INSERT INTO item_info_ksj VALUES( ?, ?, ?, ?)");

		st.setString(1, rb.getItemId());
		st.setString(2, rb.getName());
		st.setInt(3, rb.getPrice());
		st.setInt(4, rb.getNumber());

		int line = st.executeUpdate();

		st.close();
		con.close();

		return line;
	}

	//検索DAO
	public int search(RegistBean rb) throws Exception {

		//DBとの接続
		Connection con = getConnection();

		//追加した名前と同じ名前を持つ行を検索して結果を取得
		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM item_info_ksj WHERE "
						+ " NAME =  ? AND  PRICE = ? AND NUMBER = ?");

		st.setString(1, rb.getName());
		st.setInt(2, rb.getPrice());
		st.setInt(3, rb.getNumber());

		ResultSet rs = st.executeQuery();

		int line = 0;
		while (rs.next()) {
			line++;
		}
		return line;
	}

	//item_id検索DAO
	public RegistBean searchId(String item_id) throws Exception {

		RegistBean rb = null;

		//DBとの接続
		Connection con = getConnection();

		//追加した名前と同じ名前を持つ行を検索して結果を取得
		PreparedStatement st = con.prepareStatement(
				"SELECT item_info_ksj.name,item_info_ksj.price,item_info_ksj.number FROM item_info_ksj WHERE "
						+ "item_info_ksj.item_id=?");

		st.setString(1, item_id);
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			rb = new RegistBean();
			rb.setName(rs.getString("name"));
			rb.setPrice(rs.getInt("price"));
			rb.setNumber(rs.getInt("number"));
		}

		st.close();
		con.close();

		return rb;
	}

	//更新DAO
	public int update(RegistBean rb) throws Exception {

		int line = 0;
		//DBとの接続
		Connection con = getConnection();
		PreparedStatement st = con
				.prepareStatement("UPDATE item_info_ksj SET item_info_ksj.name=?, item_info_ksj.price=?, item_info_ksj.number=? WHERE item_info_ksj.item_id=?");

		st.setString(1, rb.getName());
		st.setInt(2, rb.getPrice());
		st.setInt(3, rb.getNumber());
		st.setString(4, rb.getItemId());
		line = st.executeUpdate();

		st.close();
		con.close();

		return line;
	}

	//削除DAO
	public int delete(RegistBean rb) throws Exception {

		int line = 0;
		//DBとの接続
		Connection con = getConnection();
		PreparedStatement st = con
				.prepareStatement("DELETE FROM item_info_ksj WHERE item_info_ksj.item_id=?");

		st.setString(1, rb.getItemId());
		line = st.executeUpdate();

		st.close();
		con.close();

		return line;
	}
}
