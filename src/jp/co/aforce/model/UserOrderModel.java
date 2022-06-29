package jp.co.aforce.model;

import java.util.ArrayList;

import jp.co.aforce.beans.UserOrderBean;

public class UserOrderModel {

	public String orderCheck(UserOrderBean uob) {

		ArrayList<String> emptyItem = new ArrayList<>();

		String result = null;

		if(uob.getPost().isEmpty()) {
			emptyItem.add("post");
		}
		if(uob.getPrefectures().isEmpty()) {
			emptyItem.add("prefectures");
		}
		if(uob.getAddress().isEmpty()) {
			emptyItem.add("address");
		}
		if(uob.getPayment().isEmpty()) {
			emptyItem.add("payment");
		}
		if(uob.getDate().isEmpty()) {
			emptyItem.add("date");
		}
		if(!emptyItem.isEmpty()) {
			result = String.join(",", emptyItem);
		}

		return result;
	}
}
