package board.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.db.BoardDao;
import board.db.BoardDto;

/**
 * Servlet implementation class ListController
 */
@WebServlet("/board/content.do")
public class ContentController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<BoardDto> list = new ArrayList<>();
		String num = request.getParameter("num");
		String pageNum = request.getParameter("pageNum");
		String key = request.getParameter("key");
		BoardDao dao = new BoardDao();
		
		if(key == "list" || key.equals("list")){
			dao.updateReadCount(num);
		}
		
		list = dao.getData(num);
		
		request.setAttribute("list", list);
		request.setAttribute("pageNum", pageNum);
		
		RequestDispatcher rd = request.getRequestDispatcher("content.jsp");
		rd.forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
