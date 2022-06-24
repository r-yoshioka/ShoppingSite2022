package jp.co.aforce.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.UserTopBean;
import jp.co.aforce.dao.UserItemDAO;
import jp.co.aforce.set.UserMessage;

@WebServlet(urlPatterns = { "/servlets/UserTop" })
public class UserTop extends HttpServlet {

	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");

		HttpSession session = request.getSession();

		String keyword = request.getParameter("keyword");

		if (keyword == null)
			keyword = "";

		UserItemDAO uid = new UserItemDAO();

		try {
				List<UserTopBean> list = uid.search(keyword);
				session.setAttribute("list", list);
				request.getRequestDispatcher("../UserViews/user_top.jsp").forward(request, response);
		} catch (Exception e) {
			session.setAttribute("Smessage", UserMessage.S_01);
			request.getRequestDispatcher("../UserViews/user_top.jsp").forward(request, response);
			e.printStackTrace();
		}

	}

}
