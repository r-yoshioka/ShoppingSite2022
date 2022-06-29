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

@WebServlet(urlPatterns = { "/servlets/UserTopItem" })
public class UserTopItem extends HttpServlet {

	public void doGet(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");

		HttpSession session = request.getSession();
		UserItemDAO uid = new UserItemDAO();

		try {
			List<UserTopBean> list = uid.itemSreach();
			session.setAttribute("list", list);
			request.getRequestDispatcher("../UserViews/user_top_cart.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
