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

	protected  void doPost(
		HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");

		//PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();

		String id = request.getParameter("id");
		String password = request.getParameter("password");


		AdminDAO Adao = new AdminDAO();

		try {

			AdminBean ab = Adao.search(id, password);

			String logId = ab.getId();

			if (logId != null) {
				session.setAttribute("AdminBean", ab);
				request.getRequestDispatcher("../AdminViews/admin_success.jsp").forward(request, response);

			} else {
			    request.setAttribute("message","IDもしくはパスワードが間違えています");
				request.getRequestDispatcher("../AdminViews/admin_login.jsp").forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
