package jp.co.aforce.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.ItemBean;
import jp.co.aforce.beans.RegistBean;

@WebServlet(urlPatterns = { "/servlets/CartAction" })
public class CartAction extends HttpServlet {

	@SuppressWarnings("unchecked")
	public void doGet(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//エンコーディング設定
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");

		HttpSession session = request.getSession();

		String itemId = request.getParameter("itemId");

		//セッション属性から、ItemBeanリストを取得
		List<ItemBean> cart = (List<ItemBean>) session.getAttribute("cart");

		//カートを生成してセッション属性に設定
		if (cart == null) {
			cart = new ArrayList<ItemBean>();
			session.setAttribute("cart", cart);
		}
		//商品Idを使って、追加する商品がカート内に存在するかを調べる
		//商品が存在する場合、個数を加算
		for (ItemBean itemBean : cart) {
			if (itemBean.getRegistBean().getItemId().equals(itemId)) {
				itemBean.setCount(itemBean.getCount() + 1);
				request.getRequestDispatcher("../UserViews/user_cart.jsp").forward(request, response);
			}
		}

		//商品が存在しない場合、セッション属性から商品リストを取得
		List<RegistBean> list = (List<RegistBean>) session.getAttribute("list");

		//商品Idを使って、これから追加する商品を商品リストから探す
		for (RegistBean registBean : list) {
			if (registBean.getItemId().equals(itemId)) {
				ItemBean itemBean = new ItemBean();
				itemBean.setRegistBean(registBean);
				itemBean.setCount(1);
				cart.add(itemBean);
			}
		}
		request.getRequestDispatcher("../UserViews/user_cart.jsp").forward(request, response);
	}
}
