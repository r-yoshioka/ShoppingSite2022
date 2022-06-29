package jp.co.aforce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.beans.RegistBean;
import jp.co.aforce.dao.AdminDAO;
import jp.co.aforce.set.AdminMessage;

@WebServlet(urlPatterns = { "/Servlets/AdminDelete" })
public class AdminDelete extends HttpServlet {

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
		RegistBean rb = new RegistBean();

		rb.setItemId(request.getParameter("itemId"));

		//DAOオブジェクト宣言
		AdminDAO adminDao = new AdminDAO();

		try {
			int line = adminDao.delete(rb);

			if (line > 0) {
				request.setAttribute("messageI2", AdminMessage.I_02);
				request.getRequestDispatcher("../AdminViews/admin_delete_success.jsp").forward(request, response);

			}

		} catch (Exception e) {
			request.setAttribute("messageE4", AdminMessage.E_04);
			request.getRequestDispatcher("../AdminViews/admin_delete.jsp").forward(request, response);
			e.printStackTrace();
		}
	}
}
