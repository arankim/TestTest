package board.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.db.BoardDao;
import board.db.BoardDto;

/**
 * Servlet implementation class UpdateActionController
 */
@WebServlet("/board/updateaction.do")
public class UpdateActionController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDto dto = null;
		BoardDao dao = new BoardDao();
		String num = request.getParameter("num");
		String pageNum = request.getParameter("pageNum");
		String content = request.getParameter("content");
		String subject = request.getParameter("subject");
		String name = request.getParameter("name");
		dto = new BoardDto(num, name,subject,content);
		dao.updateList(dto);
		
		response.sendRedirect("list.do?num="+num+"&pageNum="+pageNum);
	
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
