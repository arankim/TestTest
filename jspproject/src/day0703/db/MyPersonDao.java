package day0703.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Vector;

public class MyPersonDao {
	String user = "root";
	String pass = "admin1234";
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/myjava";

	public MyPersonDao() {
		// TODO Auto-generated constructor stub
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			System.out.println("mysql 드라이버 오류:" + e.getMessage());
		}
	}

	public Connection getConnection() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, pass);
		} catch (SQLException e) {
			System.out.println("mysql 연결 실패:" + e.getMessage());
		}
		return conn;
	}

	public void dbClose(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO: handle exception
		}
	}

	public void dbClose(PreparedStatement pstmt, Connection conn) {
		try {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO: handle exception
		}
	}

	// 총 갯수 구하는 메소드
	public int getTotalCount() {
		int n = 0;
		Connection conn = this.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select count(*) from myperson";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next())
				n = rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.dbClose(rs, pstmt, conn);
		}

		return n;
	}

	public void insertPerson(MyPersonDto dto) {

		Connection conn = this.getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into myperson(name, age, buseo, ipsday) values (?,?,?,now())";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setInt(2, dto.getAge());
			pstmt.setString(3, dto.getBuseo());
			System.out.println(sql);
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.dbClose(pstmt, conn);
		}
	}

	public Vector<MyPersonDto> getAllSawons() {
		Vector<MyPersonDto> list = new Vector<>();
		Connection conn = this.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MyPersonDto dto = null;
		String sql = "select num,ifnull(name,'noname') name, ifnull(age,0) age, ifnull(buseo,'nobuseo') buseo, ipsday from myperson order by num desc";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new MyPersonDto(rs.getInt("num"), rs.getString("name"), rs.getString("buseo"), rs.getInt("age"),
						rs.getDate("ipsday"));
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.dbClose(rs, pstmt, conn);
		}

		return list;
	}
	
	public HashMap<Object,Object> getcountBuseo(){
		HashMap<Object,Object> map = new HashMap<>();
		String sql = "select buseo, count(buseo) cnt from myperson group by buseo";
		Connection conn = this.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				map.put(rs.getString("buseo"), rs.getInt("cnt"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.dbClose(rs, pstmt, conn);
		}
		
		return map;
	}
	
	public int[] getAgeCount(){
		int[] age = new int[5];
		Vector<MyPersonDto> datas = this.getAllSawons();
		for(MyPersonDto dto : datas){
			//10대 : 0, 20대: 1, .. 50대 : 4가 나오도록 공식
			int idx = dto.getAge() / 10 - 1;
			age[idx]++;
		}
		return age;
	}
	
	public MyPersonDto getSelectPerson(int num){
		MyPersonDto dto = null;
		Connection conn = this.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select select num,ifnull(name,'noname') name, ifnull(age,0) age, ifnull(buseo,'nobuseo') buseo, ipsday from myperson where num = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto =  new MyPersonDto(rs.getInt("num"), rs.getString("name"), rs.getString("buseo"), rs.getInt("age"),
						rs.getDate("ipsday"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			 this.dbClose(rs, pstmt, conn);
		}
		return dto;
	}
}
