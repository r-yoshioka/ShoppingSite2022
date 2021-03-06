package jp.co.aforce.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.ItemBean;

@WebServlet(urlPatterns = { "/servlets/CartRemoveAction" })
public class CartRemoveAction extends HttpServlet {

	@SuppressWarnings("unchecked")
	public void doGet(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//エンコーディング設定
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");

		HttpSession session = request.getSession();

		String itemId = request.getParameter("itemId");

		int sum = 0;

		//セッション属性から、ItemBeanリストを取得
		List<ItemBean> cart = (List<ItemBean>) session.getAttribute("cart");

		for (ItemBean itemBean : cart) {
			if (itemBean.getRegistBean().getItemId().equals(itemId)) {
				cart.remove(itemBean);
				break;
			}
		}
		sum = getSum(cart, sum);
		request.setAttribute("sum", sum);
		request.getRequestDispatcher("../UserViews/user_cart.jsp").forward(request, response);
	}

	private int getSum(List<ItemBean> cart, int sum) {
		for (ItemBean itemBean : cart) {
			// 商品の合計
			sum = sum + itemBean.getRegistBean().getPrice() * itemBean.getCount();
			itemBean.setSum(itemBean.getSum());
		}
		return sum;
	}
}
