package jp.co.aforce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.RegistBean;
import jp.co.aforce.dao.AdminDAO;

@WebServlet(urlPatterns = { "/servlets/UserItemInfo" })
public class UserItemInfo extends HttpServlet {

	public void doGet(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		直接アクセスの場合はログイン画面へ遷移
//		request.getRequestDispatcher("../UserViews/user_login").forward(request, response);
//	}

		HttpSession session = request.getSession();

		//パラメータ取得
		String itemId = request.getParameter("itemId");

		//DAOオブジェクト宣言
		AdminDAO ad = new AdminDAO();

		try {
			RegistBean rb = ad.itemInfo(itemId);
			session.setAttribute("rb", rb);
			request.getRequestDispatcher("../UserViews/user_item_info.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

//	public void doPost(
//			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//		//エンコーディング設定
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html; charset = UTF-8");
//
//		HttpSession session = request.getSession();
//
//		//パラメータ取得
//		String itemId = request.getParameter("itemId");
////		String name = request.getParameter("name");
////		String info = request.getParameter("info");
////		int price = Integer.parseInt(request.getParameter("price"));
//
////		//入力値セット
////		RegistBean rb = new RegistBean();
////
////		rb.setName(name);
////		rb.setInfo(info);
////		rb.setPrice(price);
//
//		//DAOオブジェクト宣言
//		AdminDAO ad = new AdminDAO();
//
//		try {
//			RegistBean rb = ad.itemInfo(itemId);
//			session.setAttribute("rb", rb);
//			request.getRequestDispatcher("../UserViews/user_item_info.jsp").forward(request, response);
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
}