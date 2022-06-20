package jp.co.aforce.servlets;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.beans.RegistBean;
import jp.co.aforce.dao.AdminDAO;
import jp.co.aforce.set.AdminMessage;

@WebServlet(urlPatterns = { "/Servlets/AdminRegist" })
public class AdminRegist extends HttpServlet {

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

		//パラメータの取得
		String name = request.getParameter("name");
		int price = Integer.parseInt(request.getParameter("price"));
		int number = Integer.parseInt(request.getParameter("number"));

		//入力値セット
		RegistBean rb = new RegistBean();

		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyMMddHH");

		// 書式を指定してLocalDateTimeのインスタンスを作成する
		LocalDateTime ldt = LocalDateTime.now();

		// システム日付を、DateTimeFormatterで指定したフォーマットで文字列に変換
		String date = ldt.format(format);

		//A＋日付でIDを採番
		rb.setItemId("A" + date);
		rb.setName(name);
		rb.setPrice(price);
		rb.setNumber(number);

		//DAOオブジェクト宣言
		AdminDAO adminDao = new AdminDAO();

		try {

			int line = adminDao.search(rb);

			if (line > 0) {
				request.setAttribute("messageE1", AdminMessage.E_01);
				request.getRequestDispatcher("../AdminViews/admin_regist.jsp").forward(request, response);

			} else {
				adminDao.insert(rb);
				request.setAttribute("messageI1", AdminMessage.I_01);
				request.getRequestDispatcher("../AdminViews/admin_regist.jsp").forward(request, response);
			}
		} catch (Exception e) {
			request.setAttribute("messageE2", AdminMessage.E_02);
			request.getRequestDispatcher("../AdminViews/admin_regist.jsp").forward(request, response);
			e.printStackTrace();
		}
	}
}
