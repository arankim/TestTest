package day0703.db;

import java.util.Date;

public class MyPersonDto {
	private int num;
	private String name;
	private String buseo;
	private int age;
	private Date ipsaday;
	
	public MyPersonDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public MyPersonDto(int num, String name, String buseo, int age, Date ipsaday) {
		super();
		this.num = num;
		this.name = name;
		this.buseo = buseo;
		this.age = age;
		this.ipsaday = ipsaday;
	}
	
	public MyPersonDto(String name, String buseo, int age) {
		super();
		this.name = name;
		this.buseo = buseo;
		this.age = age;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBuseo() {
		return buseo;
	}
	public void setBuseo(String buseo) {
		this.buseo = buseo;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Date getIpsaday() {
		return ipsaday;
	}
	public void setIpsaday(Date ipsaday) {
		this.ipsaday = ipsaday;
	}	
}
