package com.concert.dto;

public class AdminDto {
	private String id;
	private String pw;
	private String name;
	private String tel;
	@Override
	public String toString() {
		return "Admin [id=" + id + ", pw=" + pw + ", name=" + name + ", tel=" + tel + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public AdminDto() {
		super();
	}
	public AdminDto(String id, String pw, String name, String tel) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
}
