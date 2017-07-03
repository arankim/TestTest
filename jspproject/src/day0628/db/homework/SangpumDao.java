package day0628.db.homework;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

public class SangpumDao {

	private String driverName = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "angel";
	private String pass = "admin1234";

	public SangpumDao() {
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

	public void insertSngpum(SangpumDto spd) {
		Connection conn = this.getConnection();
		Statement stmt = null;
		String sql = "insert into sangpum values (seqjsp.nextval,'" + spd.getSang() + "'," + spd.getSu() + ","
				+ spd.getDan() + ")";
		System.out.println(sql);

		try {
			stmt = conn.createStatement();
			stmt.execute(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (stmt != null) {
				try {
					if (stmt != null) {
						stmt.close();
					}

					if (conn != null) {
						conn.close();
					}
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		}
	}

	public Vector<SangpumDto> getAllSangpum() {
		Vector<SangpumDto> list = new Vector<>();
		Connection conn = this.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		SangpumDto spd = null;
		String sql = "select * from sangpum order by num";

		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				spd = new SangpumDto(rs.getString("sang"), rs.getInt("num"), rs.getInt("su"), rs.getInt("dan"));
				list.add(spd);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			e.getMessage();
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
		return list;
	}

	public SangpumDto getselectSangpum(int num) {
		SangpumDto dto = null;
		Connection conn = this.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "select * from sangpum where num=" + num;
		System.out.println(sql);
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				dto = new SangpumDto(rs.getString("sang"), rs.getInt("num"),
						rs.getInt("su"), rs.getInt("dan"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
		return dto;
	}

	public void getUpdateSangpum(SangpumDto dto) {
		Connection conn = this.getConnection();
		Statement stmt = null;
		String sql = "update sangpum set sang='" + dto.getSang() + "',dan=" + dto.getDan() + ",su=" + dto.getSu() + " where num="+dto.getNum();
		System.out.println(sql);
		try {
			stmt = conn.createStatement();
			stmt.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException se) {
				se.printStackTrace();
				se.getMessage();
			}
		}

	}
}
