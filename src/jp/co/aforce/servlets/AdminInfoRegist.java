package jp.co.aforce.servlets;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.beans.AdminBean;
import jp.co.aforce.dao.AdminDAO;
import jp.co.aforce.set.AdminMessage;

@WebServlet(urlPatterns = { "/servlets/AdminInfoRegist" })
public class AdminInfoRegist extends HttpServlet {

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

		try {

			String name = request.getParameter("name");
			String password = request.getParameter("password");

			AdminBean ab = new AdminBean();

			DateTimeFormatter format = DateTimeFormatter.ofPattern("yyMMddHHmmss");

			// 書式を指定してLocalDateTimeのインスタンスを作成する
			LocalDateTime ldt = LocalDateTime.now();

			// システム日付を、DateTimeFormatterで指定したフォーマットで文字列に変換
			String date = ldt.format(format);

			//A＋日付でIDを採番
			ab.setAdminId("A" + date);
			ab.setName(name);
			ab.setPassword(password);

			//DAOオブジェクト宣言
			AdminDAO adminDao = new AdminDAO();

			int line = adminDao.adminSearch(ab);

			if (line > 0) {
				request.setAttribute("message", AdminMessage.E_06);
				request.getRequestDispatcher("../AdminViews/admin_info_regist.jsp").forward(request, response);
			} else {
				adminDao.adminInsert(ab);
				request.setAttribute("message", AdminMessage.I_04);
				request.getRequestDispatcher("../AdminViews/admin_info_success.jsp").forward(request, response);
			}

		} catch (Exception e) {
			request.setAttribute("message", AdminMessage.E_07);
			request.getRequestDispatcher("../AdminViews/admin_info_regist.jsp").forward(request, response);
			e.printStackTrace();

		}
	}
}
