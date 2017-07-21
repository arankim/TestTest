package board.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.db.BoardDao;
import board.db.BoardDto;

/**
 * Servlet implementation class ListController
 */
@WebServlet("/board/writeaction.do")
public class WriteActionController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDao dao = new BoardDao();
		BoardDto dto = new BoardDto();
		String realFolder = request.getServletContext().getRealPath("/save");
		try{
		MultipartRequest multi = null;
		multi = new MultipartRequest(request, realFolder,1024*1024*2,"UTF-8",new DefaultFileRenamePolicy()); //1024*1024*2 : 2MB
		dto.setName(multi.getParameter("name"));
		dto.setSubject(multi.getParameter("subject"));
		dto.setContent(multi.getParameter("content"));
		
		dao.insertList(dto);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("../index.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
