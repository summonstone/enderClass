package com.ender.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ender.model.CartDAO;
import com.ender.model.CartListVO;

public class UserCartListController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		CartDAO dao = new CartDAO();
		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("userID");
		List<CartListVO> list = dao.cartList(userID);

		request.setAttribute("usercartlist", list);

		return "userCartList";

	}
}
