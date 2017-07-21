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
		//����¡ ó���� �ʿ��� ������	
		int totalCount=db.getTotalCount(); //�� ���� ����
		int perPage=5; //���������� �������� ���� ����
		int perBlock=5; //�Ѻ��� �������� ��������ȣ�� ��
		int currentPage;//����������,���� �ΰ��̸� 1�� ��
		int totalPage; //�� �������� ����
		int startNum;//���������� �������� ���۹�ȣ
		int endNum;//���������� �������� ����ȣ
		int startPage; //�� ���� �������� ������������ȣ
		int endPage; //�� ���� �������� ����������ȣ
		int no; //�Խñۿ� ���� ���۹�ȣ
		
		//���� ������
		if(request.getParameter("pageNum")!=null)
			currentPage=Integer.parseInt(request.getParameter("pageNum"));
		else
			currentPage=1;
		//�� ��������
		totalPage=(totalCount/perPage)+(totalCount%perPage>0?1:0);
		//�� �������� ������ ���۹�ȣ�� ����ȣ ���ϱ�
		startNum=(currentPage-1)*perPage+1;
		endNum=startNum+perPage-1;
		//���� ��� ��� 45���� ���� �������
		  //������ �������� endnum �� 45 �� �Ǿ���
		  if(endNum>totalCount)
				endNum=totalCount;
		
		//�� ���� ������ ���� ��������ȣ�� �� ������ ��ȣ ���ϱ�
		startPage= (currentPage-1)/perBlock*perBlock+1;
		endPage=startPage+perBlock-1;
		
		//���� ��� �� 34�������ϰ��
		//������ ���� 30-34 �� ��������
		if(endPage>totalPage)
		   endPage=totalPage;
		
		//�� �ۿ� ������ ��ȣ���ϱ�(�� 100����� 100���� �����)
		no=totalCount-((currentPage-1)*perPage);
		
		//��񿡼� ��� ��������.
		List<BoardDto> list=db.getList(startNum, endNum);

		

		//jsp���� ��½� �ʿ��� ������ request�� ���
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
