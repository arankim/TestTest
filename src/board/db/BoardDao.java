package board.db;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.setting.ConnectionManager;

public class BoardDao {
	ConnectionManager connectionManager = ConnectionManager.getInstance();
	SqlSession session;

	private SqlSession getSession() {
		session = connectionManager.openSession();
		return session;
	}
	
	public int getTotalCount(){
		session = getSession();
		int n = session.selectOne("totalCountOfBoard");
		session.close();
		return n;
	}
	
	public List<BoardDto> getList(int start, int end){
		session = getSession();
		Map<String, Integer> map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);

		List<BoardDto> list = session.selectList("selectListOfBoard",map);
		session.close();
		return list;
	}
	
	public void insertList(BoardDto dto){
		session = getSession();
		session.insert("insertOfBoard", dto);
		session.close();
	}
	
	public void updateReadCount(String num){
		session = getSession();
		session.update("updateReadCountOfBoard",num);
		session.close();
	}
	
	public List<BoardDto> getData(String num){
		List<BoardDto> list = new ArrayList<>();
		session = getSession();
		list.addAll(session.selectList("selectNumOfBoard", num));
		session.close();
		return list;
	}
	
	public int getImage(String num){
		session = getSession();
		int n = session.selectOne("imageOfBoard", num);
		session.close();
		return n;
	}
	
	public void DeleteList(String num){
		session = getSession();
		session.delete("deleteOfBoard");
		session.close();
	}
	
	public void updateList(BoardDto dto){
		session = getSession();
		session.update("updateOfBoard",dto.getNum());
		session.close();
	}
	

}
