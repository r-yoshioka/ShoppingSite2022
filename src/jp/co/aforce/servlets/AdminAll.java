package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


@WebServlet(urlPatterns = { "/../Servlets/AdminAll" })
public class AdminAll extends HttpServlet {

	public void doGet(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//直接アクセスの場合はログイン画面へ遷移
		request.getRequestDispatcher("../AdminViews/admin_login.jsp").forward(request, response);
	}

	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//エンコーディング設定
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");
		PrintWriter out = response.getWriter();

		try {
			InitialContext ic = new InitialContext(); //InitialContextオブジェクト取得
			DataSource ds = (DataSource) ic.lookup("java:/comp/env/jdbc/shoppingsite");
			Connection con = ds.getConnection(); //ConectionをPOSTメソッドを使ってオブジェクト取得

			PreparedStatement st = con.prepareStatement("SELECT * FROM item_info_ksj");
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				out.println(rs.getString("item_id"));
				out.println(" : ");
				out.println(rs.getString("name"));
				out.println(" : ");
				out.println(rs.getInt("price"));
				out.println(" : ");
				out.println(rs.getInt("number"));
				out.println(" <br> ");
			}
			st.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace(out);
		}
	}
}
