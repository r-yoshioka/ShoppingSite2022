package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jp.co.aforce.beans.AdminBean;
import jp.co.aforce.beans.RegistBean;

public class AdminDAO extends DAO {

	public AdminBean search(String adminId, String password) throws Exception {

		//DBとの接続
		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement(
				"SELECT * FROM admin_info_ksj WHERE adminId=? and password=?");

		//SQLパラメータ設定
		st.setString(1, adminId);
		st.setString(2, password);

		//SQLの実行
		ResultSet rs = st.executeQuery();

		AdminBean ab = new AdminBean();

		while (rs.next()) {
			ab.setAdminId(rs.getString("adminId"));
			ab.setName(rs.getString("name"));
			ab.setPassword(rs.getString("password"));
		}

		st.close();
		con.close();
		return ab;
	}

	//管理者登録DAO
	public int adminInsert(AdminBean ab) throws Exception {

		//DBとの接続
		Connection con = getConnection();

		//データの追加処理
		PreparedStatement st = con.prepareStatement(
				"INSERT INTO admin_info_ksj VALUES( ?, ?, ?)");

		st.setString(1, ab.getAdminId());
		st.setString(2, ab.getName());
		st.setString(3, ab.getPassword());

		int line = st.executeUpdate();

		st.close();
		con.close();

		return line;
	}

	//商品登録DAO
	public int insert(RegistBean rb) throws Exception {

		//DBとの接続
		Connection con = getConnection();

		//データの追加処理
		PreparedStatement st = con.prepareStatement(
				"INSERT INTO item_info_ksj VALUES( ?, ?, ?, ?, ?)");

		st.setString(1, rb.getItemId());
		st.setString(2, rb.getName());
		st.setInt(3, rb.getPrice());
		st.setInt(4, rb.getNumber());
		st.setString(5, rb.getInfo());

		int line = st.executeUpdate();

		st.close();
		con.close();

		return line;
	}

	//管理者情報検索DAO
	public int adminSearch(AdminBean ab) throws Exception {

		//DBとの接続
		Connection con = getConnection();

		//追加した名前と同じ名前を持つ行を検索して結果を取得
		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM admin_info_ksj WHERE "
						+ " NAME =  ? AND  PASSWORD = ?");

		st.setString(1, ab.getName());
		st.setString(2, ab.getPassword());

		ResultSet rs = st.executeQuery();

		int line = 0;
		while (rs.next()) {
			line++;
		}
		return line;
	}

	//商品検索DAO
	public int search(RegistBean rb) throws Exception {

		//DBとの接続
		Connection con = getConnection();

		//追加した名前と同じ名前を持つ行を検索して結果を取得
		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM item_info_ksj WHERE "
						+ " NAME =  ? AND  PRICE = ? AND NUMBER = ? AND INFO = ?");

		st.setString(1, rb.getName());
		st.setInt(2, rb.getPrice());
		st.setInt(3, rb.getNumber());
		st.setString(4, rb.getInfo());

		ResultSet rs = st.executeQuery();

		int line = 0;
		while (rs.next()) {
			line++;
		}
		return line;
	}

	//item_id検索DAO
	public RegistBean searchId(String itemId) throws Exception {

		RegistBean rb = null;

		//DBとの接続
		Connection con = getConnection();

		//追加した名前と同じ名前を持つ行を検索して結果を取得
		PreparedStatement st = con.prepareStatement(
				"SELECT item_info_ksj.name,item_info_ksj.price,item_info_ksj.number, item_info_ksj.info FROM item_info_ksj WHERE "
						+ "item_info_ksj.itemId=?");

		st.setString(1, itemId);
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			rb = new RegistBean();
			rb.setName(rs.getString("name"));
			rb.setPrice(rs.getInt("price"));
			rb.setNumber(rs.getInt("number"));
			rb.setInfo(rs.getString("info"));
		}

		st.close();
		con.close();

		return rb;
	}

	//商品一覧DAO
	public List<RegistBean> allItem() throws Exception {

		//DBとの接続
		Connection con = getConnection();

		List<RegistBean> list = new ArrayList<RegistBean>();

		//全商品を取得
		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM item_info_ksj");

		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			RegistBean rb = new RegistBean();
			rb.setItemId(rs.getString("itemId"));
			rb.setName(rs.getString("name"));
			rb.setPrice(rs.getInt("price"));
			rb.setNumber(rs.getInt("number"));
			rb.setInfo(rs.getString("info"));
			list.add(rb);
		}

		st.close();
		con.close();

		return list;
	}

	//更新DAO
	public int update(RegistBean rb) throws Exception {

		int line = 0;
		//DBとの接続
		Connection con = getConnection();
		PreparedStatement st = con
				.prepareStatement(
						"UPDATE item_info_ksj SET item_info_ksj.name=?, item_info_ksj.price=?, item_info_ksj.number=?, item_info_ksj.info=? WHERE item_info_ksj.itemId=?");

		st.setString(1, rb.getName());
		st.setInt(2, rb.getPrice());
		st.setInt(3, rb.getNumber());
		st.setString(4, rb.getInfo());
		st.setString(5, rb.getItemId());

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
				.prepareStatement("DELETE FROM item_info_ksj WHERE item_info_ksj.itemId=?");

		st.setString(1, rb.getItemId());
		line = st.executeUpdate();

		st.close();
		con.close();

		return line;
	}

	//一覧DAO
	public List<RegistBean> itemSearch(String keyword) throws Exception {
		List<RegistBean> List = new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM item_info_ksj WHERE name LIKE ?");
		st.setString(1, "%" + keyword + "%");
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			RegistBean rb = new RegistBean();
			rb.setItemId(rs.getString("itemId"));
			rb.setName(rs.getString("name"));
			rb.setPrice(rs.getInt("price"));
			rb.setNumber(rs.getInt("number"));
			rb.setInfo(rs.getString("info"));
			List.add(rb);
		}

		st.close();
		con.close();

		return List;
	}

	//商品詳細DAO
	public RegistBean itemInfo (String itemId) throws Exception {

		//DBとの接続
		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement(
				"SELECT * FROM item_info_ksj WHERE itemId=? ");

		//SQLパラメータ設定
		st.setString(1, itemId);

		//SQLの実行
		ResultSet rs = st.executeQuery();

		RegistBean rb = new RegistBean();

		while (rs.next()) {
			rb.setItemId(rs.getString("itemId"));
			rb.setName(rs.getString("name"));
			rb.setPrice(rs.getInt("price"));
			rb.setInfo(rs.getString("info"));
		}

		st.close();
		con.close();

		return rb;
	}
}
