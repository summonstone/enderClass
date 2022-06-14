package com.ender.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.boardmodel.BoardDAO;
import com.ender.boardmodel.BoardVO;

public class BoardListController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		List<BoardVO> list = dao.boardSearchAll();
		request.setAttribute("list", list);

		return "nboardList";
	}

}
