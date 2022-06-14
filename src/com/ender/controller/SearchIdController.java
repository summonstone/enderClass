package com.ender.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.ender.usermodel.UserDAO;
import com.ender.usermodel.UserDTO;

public class SearchIdController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String userName = request.getParameter("searchName");
		String userPhone = request.getParameter("searchPhone");

		UserDAO dao = new UserDAO();

		PrintWriter out = response.getWriter();

		JSONObject obj = new JSONObject();

		// 이름에 정보를 기입
		if (!userName.equals("")) {

			UserDTO vo = dao.userNameContent(userName);
			
			System.out.println("vo " + vo);

			// 해당 이름의 정보가 있을 때
			if (vo != null) {

				// 조사 시작
				dao.searchID(vo);

				String realPhone = vo.getUserPhone();
				String realID = vo.getUserID();

				// 이름이랑 휴대폰 번호가 모두 같을 경우
				if (userPhone.equals(realPhone)) {
					obj.put("userName", userName);
					obj.put("realID", realID);
					obj.put("status", "ok");
				} else {
					// 둘 중 하나가 다를 경우
					obj.put("status", "not-ok");
				}
			} else {
				// 해당 이름의 정보가 없을 때
				obj.put("status", "no-info");
			}
			out.println(obj.toJSONString());
			out.close();
		}
		return null;
	}
}