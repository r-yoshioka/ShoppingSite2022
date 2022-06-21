package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.beans.RegistBean;
import jp.co.aforce.dao.AdminDAO;


@WebServlet(urlPatterns = { "/Servlets/AdminAll" })
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
			AdminDAO adminDao = new AdminDAO();
			//全商品の情報を取得
			//search2メソッドは、商品リストをList〈RegistBean〉型で返す
			List<RegistBean> list = adminDao.itemSearch("");

			//リクエスト属性に商品リストを設定する
			request.setAttribute("list", list);

			request.getRequestDispatcher("../AdminViews/admin_all.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace(out);
		}
	}
}
