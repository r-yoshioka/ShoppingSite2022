package jp.co.aforce.servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(urlPatterns = { "/servlets/UserCartAdd" })
public class UserCartAdd extends HttpServlet {

//	public void doPost(
//			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html; charset = UTF-8");
//
//		HttpSession session = request.getSession();
//
//		String item_id = request.getParameter("item_id");
//
//		List<RegistBean> cart = (List<RegistBean>)session.getAttribute("cart");
//
//		if(cart == null) {
//			cart = new ArrayList<RegistBean>();
//			session.setAttribute("cart", cart);
//		}
//
//		for(RegistBean rb : cart) {
//			if(rb.getItemId() == item_id) {
//				rb = new RegistBean();
//				rb.getItemId();
//				rb.getName();
//				rb.getPrice();
//				rb.getNumber();
//				cart.add(rb);
//			}
//		}
//		return cart;
//	}

}
