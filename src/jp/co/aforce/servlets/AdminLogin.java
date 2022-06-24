package jp.co.aforce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.AdminBean;
import jp.co.aforce.dao.AdminDAO;

@WebServlet(urlPatterns = { "/servlets/AdminLogin" })
public class AdminLogin extends HttpServlet {

	public void doGet(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//直接アクセスの場合はログイン画面へ遷移
		request.getRequestDispatcher("../AdminViews/admin_login").forward(request, response);
	}

	protected void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//エンコーディング設定
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");

		HttpSession session = request.getSession();

		//入力値の取得
		String admin_id = request.getParameter("admin_id");
		String password = request.getParameter("password");

		AdminDAO AdminDao = new AdminDAO();

		try {

			AdminBean ab = AdminDao.search(admin_id, password);

			String logId = ab.getAdminId();

			if (logId != null) {
				//入力されたIDとPASSが存在する場合、成功画面へ遷移
				session.setAttribute("id", admin_id);
				request.getRequestDispatcher("../AdminViews/admin_menu.jsp").forward(request, response);

			} else {
				//入力されたIDとPASSが存在しない場合、エラーメッセージを出力
				request.setAttribute("id", admin_id);
				request.setAttribute("message", "IDまたはパスワードが違います");
				request.getRequestDispatcher("../AdminViews/admin_login.jsp").forward(request, response);
			}

		} catch (Exception e) {
			//その他のエラーが発生時エラーメッセージ
			request.setAttribute("id", admin_id);
			request.setAttribute("message", "システムエラーが発生しました。:" + e);
			request.getRequestDispatcher("../AdminViews/admin_login.jsp").forward(request, response);
		}
	}
}
