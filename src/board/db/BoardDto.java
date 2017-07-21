package board.db;

import java.sql.Timestamp;

public class BoardDto {

	private String num;
	private String name;
	private String subject;
	private String content;
	private int readcount;
	private Timestamp writeday;
	
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public BoardDto(String num, String name, String subject, String content) {
		super();
		this.num = num;
		this.name = name;
		this.subject = subject;
		this.content = content;
	}
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Timestamp getWriteday() {
		return writeday;
	}
	public void setWriteday(Timestamp writeday) {
		this.writeday = writeday;
	}
}
