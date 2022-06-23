package jp.co.aforce.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.RegistBean;
import jp.co.aforce.dao.AdminDAO;

@WebServlet(urlPatterns = { "/servlets/UserItemAction" })
public class UserItemAction extends HttpServlet {

	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//エンコーディング設定
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");

		HttpSession session = request.getSession();

		String keyword = request.getParameter("keyword");
		if (keyword == null) keyword="";

		AdminDAO ad = new AdminDAO();

		try {
			List<RegistBean> list = ad.keywordSearch(keyword);
			session.setAttribute("list", list);
			request.getRequestDispatcher("../UserViews/user_item.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
