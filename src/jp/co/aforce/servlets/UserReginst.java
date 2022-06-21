package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.beans.UserReginstBean;
import jp.co.aforce.dao.UserMemberDAO;
import jp.co.aforce.model.UserReginstModel;
import jp.co.aforce.set.UserMessage;
import jp.co.aforce.tool.Page;

@WebServlet(urlPatterns = { "/servlets/UserReginst" })
public class UserReginst extends HttpServlet {

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

			UserReginstBean urb = new UserReginstBean();

			DateTimeFormatter format = DateTimeFormatter.ofPattern("yyMMddHHmmss");
			LocalDateTime ld = LocalDateTime.now();
			String date = ld.format(format);

			urb.setMemberId("M" + date);
			urb.setName(NAME);
			urb.setSex(SEX);
			urb.setBirthYear(BIRTH_YEAR);
			urb.setBirthMonth(BIRTH_MONTH);
			urb.setBirthDay(BIRTH_DAY);
			urb.setJob(JOB);
			urb.setPhoneNumber(PHONE_NUMBER);
			urb.setMailAddress(MAIL_ADDRESS);
			urb.setPassword(PASSWORD);

			UserReginstModel urm = new UserReginstModel();

			String result = urm.inputCheck(urb);

			if (result != null) {
				request.setAttribute("message", UserMessage.R_01);
				request.setAttribute("message02", result + UserMessage.R_02);
				request.getRequestDispatcher("../UserViews/user_reginst.jsp").forward(request, response);
			}

			UserMemberDAO urd = new UserMemberDAO();

			int line = urd.searchReginst(urb);

			if (line > 0) {
				request.setAttribute("message", UserMessage.R_03);
				request.getRequestDispatcher("../UserViews/user_reginst.jsp").forward(request, response);
			} else {
				UserMemberDAO urd2 = new UserMemberDAO();
				line = urd2.insert(urb);

				request.setAttribute("reginstBean", urb);
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
