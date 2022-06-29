package jp.co.aforce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.UserLoginBean;
import jp.co.aforce.dao.UserLoginDAO;
import jp.co.aforce.set.UserMessage;

@WebServlet(urlPatterns = { "/servlets/UserLogin" })
public class UserLogin extends HttpServlet {

	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");

		HttpSession session = request.getSession();

		String mailAddress = request.getParameter("mailAddress");
		String password = request.getParameter("password");

		UserLoginDAO ld = new UserLoginDAO();

		try {
			UserLoginBean ulb = ld.search(mailAddress, password);

			String logId = ulb.getMailAddress();

			if (logId != null) {
				session.setAttribute("loginName", ulb);
				request.getRequestDispatcher("../UserViews/user_top.jsp").forward(request, response);
			} else {
				request.setAttribute("LoginMessage", UserMessage.L_01);
				session.setAttribute("mailAddress", mailAddress);
				session.setAttribute("password", "");
				request.getRequestDispatcher("../UserViews/user_login.jsp").forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}