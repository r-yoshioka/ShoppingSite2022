package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.beans.UserUpdateBean;
import jp.co.aforce.dao.UserMemberDAO;
import jp.co.aforce.set.UserMessage;
import jp.co.aforce.tool.Page;

@WebServlet(urlPatterns = { "/servlets/UserUpdateSearch" })
public class UserUpdateSearch extends HttpServlet {

	protected void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");
		PrintWriter out = response.getWriter();

		Page.header(out);

		String mailAddress = request.getParameter("mail_address");
		String password = request.getParameter("password");

		UserMemberDAO umd = new UserMemberDAO();

		try {
			UserUpdateBean uub = umd.search(mailAddress, password);

			if (uub == null) {
				request.setAttribute("USMessage", UserMessage.U_03);
				request.getRequestDispatcher("../UserViews/user_update_search.jsp").forward(request, response);
			} else {
				request.setAttribute("mail_address", mailAddress);
				request.setAttribute("password", password);
				request.getRequestDispatcher("../UserViews/user_update.jsp").forward(request, response);
			}
		} catch (Exception e) {
			request.setAttribute("USMessage", UserMessage.U_01);
			request.getRequestDispatcher("../UserViews/user_update_search.jsp").forward(request, response);
			e.printStackTrace();
		}
	}
}
