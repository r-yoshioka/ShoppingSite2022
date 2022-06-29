package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.beans.UserOrderBean;
import jp.co.aforce.set.UserMessage;
import jp.co.aforce.tool.Page;

@WebServlet(urlPatterns = { "/servlets/UserOrder" })
public class UserOrder extends HttpServlet {

	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");
		PrintWriter out = response.getWriter();

		Page.header(out);

		try {
			String name = request.getParameter("name");
			String post = request.getParameter("post");
			String prefectures = request.getParameter("prefectures");
			String address = request.getParameter("address");
			String payment = request.getParameter("payment");
			String datelist = request.getParameter("datelist");

			UserOrderBean uob = new UserOrderBean();

			request.setAttribute("name", name);
			request.setAttribute("post", post);
			request.setAttribute("prefectures", prefectures);
			request.setAttribute("address", address);
			request.setAttribute("payment", payment);
			request.setAttribute("datelist", datelist);
			request.setAttribute("orderBean", uob);
			request.getRequestDispatcher("../UserViews/user_customer_success.jsp").forward(request, response);

//			DateTimeFormatter format = DateTimeFormatter.ofPattern("yyMMddHHmmss");
//			LocalDateTime ld = LocalDateTime.now();
//			String orderId = ld.format(format);
//
//			uob.setOrderId("O" + orderId);
//			uob.setMemberId("m" + orderId);
//			uob.setPost(post);
//			uob.setPrefectures(prefectures);
//			uob.setAddress(address);
//			uob.setPayment(payment);
//			uob.setDate(date);
//
//			UserReginstModel urm = new UserReginstModel();
//
//			String result = urm.orderCheck(uob);
//
//			if (result != null) {
//				request.setAttribute("Omessage", UserMessage.O_01);
//				request.getRequestDispatcher("../UserViews/user_customer_input.jsp").forward(request, response);
//			}
//
//			UserOrderDAO uod = new UserOrderDAO();
//
//			int line = uod.insert(uob);
//
//			if (line > 0) {
//				request.setAttribute("message", UserMessage.R_03);
//				request.getRequestDispatcher("../UserViews/user_customer_input.jsp").forward(request, response);
//			} else {
//				request.setAttribute("name", name);
//				request.setAttribute("post", post);
//				request.setAttribute("prefectures", prefectures);
//				request.setAttribute("address", address);
//				request.setAttribute("payment", payment);
//				request.setAttribute("date", date);
//				request.setAttribute("orderBean", uob);
//				request.getRequestDispatcher("../UserViews/user_customer_success.jsp").forward(request, response);
//			}
//
		} catch (Exception e) {
			request.setAttribute("message", UserMessage.O_02);
			request.getRequestDispatcher("../UserViews/user_customer_input.jsp").forward(request, response);
			e.printStackTrace();

		}
		Page.footer(out);
	}
}
