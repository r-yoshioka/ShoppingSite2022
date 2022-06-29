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

@WebServlet(urlPatterns = { "/Servlets/AdminUpdate" })
public class AdminUpdate extends HttpServlet {

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
		rb.setName(request.getParameter("name"));
		rb.setPrice(Integer.parseInt(request.getParameter("price")));
		rb.setNumber(Integer.parseInt(request.getParameter("number")));
		rb.setInfo(request.getParameter("info"));

		//DAOオブジェクト宣言
		AdminDAO adminDao = new AdminDAO();

		try {
			int line = adminDao.update(rb);

			if (line > 0) {
				request.setAttribute("messageI3", AdminMessage.I_03);
				request.setAttribute("rb", rb);
				request.getRequestDispatcher("../AdminViews/admin_update_success.jsp").forward(request, response);

			} else {
				request.setAttribute("messageE3", AdminMessage.E_03);
				request.getRequestDispatcher("../AdminViews/admin_update.jsp").forward(request, response);
			}
		} catch (Exception e) {
			request.setAttribute("messageE2", AdminMessage.E_02);
			request.getRequestDispatcher("../AdminViews/admin_update.jsp").forward(request, response);
			e.printStackTrace();
		}
	}
}
