package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.beans.UserUpdateBean;
import jp.co.aforce.dao.UserUpdateDAO;
//import jp.co.aforce.model.UserReginstModel;
import jp.co.aforce.set.UserMessage;
import jp.co.aforce.tool.Page;

@WebServlet(urlPatterns = { "/servlets/UserUpdate" })
public class UserUpdate extends HttpServlet {

	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");
		PrintWriter out = response.getWriter();

		Page.header(out);

		try {

			String NAME = request.getParameter("name");
			String SEX = request.getParameter("sex");
			int BIRTH_YEAR = Integer.parseInt(request.getParameter("birth_year"));
			int BIRTH_MONTH = Integer.parseInt(request.getParameter("birth_month"));
			int BIRTH_DAY = Integer.parseInt(request.getParameter("birth_day"));
			String JOB = request.getParameter("job");
			String PHONE_NUMBER = request.getParameter("phone_number");
			String MAIL_ADDRESS = request.getParameter("mail_address");
			String PASSWORD = request.getParameter("password");

			UserUpdateBean uub = new UserUpdateBean();

			uub.setName(NAME);
			uub.setSex(SEX);
			uub.setBirthYear(BIRTH_YEAR);
			uub.setBirthMonth(BIRTH_MONTH);
			uub.setBirthDay(BIRTH_DAY);
			uub.setJob(JOB);
			uub.setPhoneNumber(PHONE_NUMBER);
			uub.setMailAddress(MAIL_ADDRESS);
			uub.setPassword(PASSWORD);

//			UserReginstModel urm = new UserReginstModel();
//
//			String result = urm.inputCheck(uub);
//
//			if (result != null) {
//				request.setAttribute("message", UserMessage.R_01);
//				request.setAttribute("message02", result + UserMessage.R_02);
//				request.getRequestDispatcher("../UserViews/user_reginst.jsp").forward(request, response);
//			}

			UserUpdateDAO uud = new UserUpdateDAO();

			int line = uud.search(uub);

			if (line > 0) {
				request.setAttribute("message", UserMessage.R_03);
				request.getRequestDispatcher("../UserViews/user_reginst.jsp").forward(request, response);
			} else {
//				UserReginstDAO urd2 = new UserReginstDAO();
//				line = urd2.update(uub);

				request.setAttribute("reginstBean", uub);
				request.getRequestDispatcher("../UserViews/user_reginst_success.jsp").forward(request, response);
			}

		} catch (Exception e) {
			request.setAttribute("message", UserMessage.R_04);
			request.getRequestDispatcher("../UserViews/user_reginst.jsp").forward(request, response);
			e.printStackTrace();

		}
		Page.footer(out);

	}
}
