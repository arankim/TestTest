package day0628.db.homework;

public class SangpumDto {

	private String sang;
	private Integer num;
	private Integer su;
	private Integer dan;
	
	public SangpumDto() {
		super();
	}
	
	public SangpumDto(String sang, Integer num, Integer su, Integer dan) {
		super();
		this.sang = sang;
		this.num = num;
		this.su = su;
		this.dan = dan;
	}
	
	public String getSang() {
		return sang;
	}
	public void setSang(String sang) {
		this.sang = sang;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Integer getSu() {
		return su;
	}
	public void setSu(Integer su) {
		this.su = su;
	}
	public Integer getDan() {
		return dan;
	}
	public void setDan(Integer dan) {
		this.dan = dan;
	}
	
	
}
