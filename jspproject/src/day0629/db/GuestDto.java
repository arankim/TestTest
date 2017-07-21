package day0629.db;

import java.sql.Timestamp;

public class GuestDto {
	private String num;
	private String nickname;
	private String pass;
	private String content;
	private Timestamp writeday;
	
	public GuestDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public GuestDto(String num, String nickname, String pass, String content, Timestamp writeday) {
		this.num = num;
		this.nickname = nickname;
		this.pass = pass;
		this.content = content;
		this.writeday = writeday;
	}

	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getWriteday() {
		return writeday;
	}
	public void setWriteday(Timestamp writeday) {
		this.writeday = writeday;
	}
	
	
}
