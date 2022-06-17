package jp.co.aforce.model;

import java.util.ArrayList;

import jp.co.aforce.beans.UserReginstBean;

public class UserReginstModel {

	public String inputCheck(UserReginstBean urb) {

		ArrayList<String> emptyItem = new ArrayList<>();

		String result = null;

		if(urb.getName().isEmpty()) {
			emptyItem.add("NAME");
		}
		if(urb.getSex().isEmpty()) {
			emptyItem.add("GENDER");
		}
		if(urb.getJob().isEmpty()) {
			emptyItem.add("JOB");
		}
		if(urb.getPhoneNumber().isEmpty()) {
			emptyItem.add("PHONE NUMBER");
		}
		if(urb.getMailAddress().isEmpty()) {
			emptyItem.add("MAIL ADDRESS");
		}
		if(urb.getPassword().isEmpty()) {
			emptyItem.add("PASSWORD");
		}
		if(!emptyItem.isEmpty()) {
			result = String.join(",", emptyItem);
		}

		return result;
	}

}
