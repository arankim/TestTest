package board.servlet;

import java.io.IOException;
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
@WebServlet("/board/list.do")
public class ListController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDao db = new BoardDao();
		//페이징 처리에 필요한 변수들	
		int totalCount=db.getTotalCount(); //총 글의 갯수
		int perPage=5; //한페이지당 보여지는 글의 갯수
		int perBlock=5; //한블럭당 보여지는 페이지번호의 수
		int currentPage;//현재페이지,만약 널값이면 1로 줌
		int totalPage; //총 페이지의 갯수
		int startNum;//한페이지당 보여지는 시작번호
		int endNum;//한페이지당 보여지는 끝번호
		int startPage; //한 블럭당 보여지는 시작페이지번호
		int endPage; //한 블럭당 보여지는 끝페이지번호
		int no; //게시글에 붙일 시작번호
		
		//현재 페이지
		if(request.getParameter("pageNum")!=null)
			currentPage=Integer.parseInt(request.getParameter("pageNum"));
		else
			currentPage=1;
		//총 페이지수
		totalPage=(totalCount/perPage)+(totalCount%perPage>0?1:0);
		//각 페이지에 보여질 시작번호와 끝번호 구하기
		startNum=(currentPage-1)*perPage+1;
		endNum=startNum+perPage-1;
		//예를 들어 모두 45개의 글이 있을경우
		  //마지막 페이지는 endnum 이 45 가 되야함
		  if(endNum>totalCount)
				endNum=totalCount;
		
		//각 블럭에 보여질 시작 페이지번호와 끝 페이지 번호 구하기
		startPage= (currentPage-1)/perBlock*perBlock+1;
		endPage=startPage+perBlock-1;
		
		//예를 들어 총 34페이지일경우
		//마지막 블럭은 30-34 만 보여야함
		if(endPage>totalPage)
		   endPage=totalPage;
		
		//각 글에 보여질 번호구하기(총 100개라면 100부터 출력함)
		no=totalCount-((currentPage-1)*perPage);
		
		//디비에서 목록 가져오기.
		List<BoardDto> list=db.getList(startNum, endNum);

		

		//jsp에서 출력시 필요한 변수들 request에 담기
		request.setAttribute("list",list );
		request.setAttribute("no",no );
		request.setAttribute("currentPage",currentPage );
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("totalPage", totalPage);
		RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
		rd.forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
