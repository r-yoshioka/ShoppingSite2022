package jp.co.aforce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.beans.UserUpdateBean;
import jp.co.aforce.dao.UserMemberDAO;
//import jp.co.aforce.model.UserReginstModel;
import jp.co.aforce.set.UserMessage;

@WebServlet(urlPatterns = { "/servlets/UserUpdate" })
public class UserUpdate extends HttpServlet {

	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");

		UserUpdateBean uub = new UserUpdateBean();

		uub.setName(request.getParameter("name"));
		uub.setSex(request.getParameter("sex"));
		uub.setBirthYear(Integer.parseInt(request.getParameter("birth_year")));
		uub.setBirthMonth(Integer.parseInt(request.getParameter("birth_month")));
		uub.setBirthDay(Integer.parseInt(request.getParameter("birth_day")));
		uub.setJob(request.getParameter("job"));
		uub.setPhoneNumber(request.getParameter("phone_number"));
		uub.setMailAddress(request.getParameter("mail_address"));
		uub.setPassword(request.getParameter("password"));

		UserMemberDAO umd = new UserMemberDAO();

		try {
			int line = umd.update(uub);

			if (line > 0) {
				request.setAttribute("UpdateMessage", UserMessage.U_04);
				request.setAttribute("uub", uub);
				request.getRequestDispatcher("../UserViews/user_update_success.jsp").forward(request, response);
			} else {
				request.setAttribute("UpdateMessage", UserMessage.U_03);
				request.getRequestDispatcher("../UserViews/user_update.jsp").forward(request, response);
			}
		} catch (Exception e) {
			request.setAttribute("UpdateMessage", UserMessage.U_01);
			request.getRequestDispatcher("../UserViews/user_update.jsp").forward(request, response);
			e.printStackTrace();
		}
	}
}
