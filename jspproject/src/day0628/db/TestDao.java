package day0628.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

public class TestDao {

	private String driverName = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private String user = "angel";
	private String pass = "admin1234";

	public TestDao() {
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
			e.printStackTrace();
			System.out.println("실패");
		}
		return conn;
	}

	public int getTotlalcount() {
		int n = 0;
		Connection conn = this.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "select count(*) cnt from testjsp";

		// Statement 얻기
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				n = rs.getInt("cnt");
			}
		} catch (SQLException e) {
			System.out.println("count구하기 오류: " + e.getMessage());
		} finally {
			try {
				if (rs != null) { // null인상태에서 닫을려고 하면 익셉션이 발생하기 때문에 한번 점검하고
									// 들어간다.
					rs.close();
				}
				if (stmt != null) {
					stmt.close();
				}
				if (conn != null) {
					conn.close();
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return n;
	}

	public void insertData(TestDto dto) {
		Connection conn = this.getConnection();
		Statement stmt = null;
		String sql = "insert into testjsp values (seqjsp.nextval,'" + dto.getName() + "','" + dto.getAddr() + "')";
		try {
			stmt = conn.createStatement();
			stmt.execute(sql);

		} catch (SQLException e) {
			System.out.println("insert 오류" + e.getMessage());
		} finally {
			try {

				if (stmt != null) {
					stmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public Vector<TestDto> getAllDatas() {
		Vector<TestDto> list = new Vector<>();
		Connection conn = this.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		TestDto td = null;

		String sql = "select * from testjsp order by num asc";

		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				td = new TestDto(rs.getString("num"), rs.getString("name"), rs.getString("addr"));
				list.add(td);
			}

		} catch (SQLException e) {
			System.out.println("select 에러입니다." + e.getMessage());
		}

		return list;
	}

	// num에 해당하는 데이타 반환
	public TestDto getData(String num) {

		TestDto dto = null;
		String sql = "select * from testjsp where num = " + num;
		Connection conn = this.getConnection();
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				dto = new TestDto(rs.getString("num"), rs.getString("name"), rs.getString("addr"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (stmt != null) {
					stmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return dto;
	}

	// 수정
	public void updateData(TestDto dto) {
		Connection conn = this.getConnection();
		Statement stmt = null;
		String sql = "update testjsp set name='" + dto.getName() + "',addr = '" + dto.getAddr() + "' where num ="
				+ dto.getNum();
		System.out.println(sql);

		try {
			stmt = conn.createStatement();
			stmt.execute(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (SQLException se) {
				se.printStackTrace();
			}

		}

	}

	// 삭제
	public void deleteData(String num){
		Connection conn = this.getConnection();
		Statement stmt = null;
		String sql = "delete from testjsp where num="+num;
		try {
			stmt = conn.createStatement();
			stmt.execute(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
				try {
					if(stmt!=null)
					stmt.close();
					
					if(conn!=null)
						conn.close();				
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
	
	}

