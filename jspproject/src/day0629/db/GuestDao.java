package day0629.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

public class GuestDao {
	private String driverName = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private String user = "angel";
	private String pass = "admin1234";

	public GuestDao() {
		// 오라클 드라이버 로딩
		try {
			Class.forName(driverName);

		} catch (ClassNotFoundException e) {
			System.out.println("오라클 드라이버 실패: " + e.getMessage());
		}
	}

	public Connection getConnection() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, pass);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("공동 db연결 실패" + e.getMessage());
		}

		return conn;
	}

	public static GuestDao getInstance() {
		return new GuestDao();
	}

	public void dbClose(PreparedStatement pstmt, Connection conn) {
		try {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void dbClose(PreparedStatement pstmt, Connection conn, ResultSet rs) {
		try {
			if(rs!=null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void insertGuest(GuestDto dto){
		Connection conn = this.getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into guest values ( seqjsp.nextval,?,?,?,sysdate)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getNickname());
			pstmt.setString(2, dto.getPass());
			pstmt.setString(3, dto.getContent());
			
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<GuestDto> getAllGuest(){
		ArrayList<GuestDto> list = new ArrayList<>();
		
		Connection conn = this.getConnection();
		PreparedStatement pstmt  = null;
		ResultSet rs = null;
		GuestDto dto = null;
		String sql = "select * from guest";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				dto = new GuestDto(rs.getString("num"),rs.getString("nickname"), rs.getString("pass"), rs.getString("content"), rs.getTimestamp("wirteday"));
				list.add(dto);
			}
		} catch (SQLException e) {
			System.out.println(" getAllGuest()에러");
			e.printStackTrace();
		} finally {
			this.dbClose(pstmt, conn, rs);
		}
		return list;
	}
	
	
}
