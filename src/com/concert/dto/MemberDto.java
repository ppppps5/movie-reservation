package com.concert.dto;

/*
 * 회원정보를 저장하는 Memberdto
 */
public class MemberDto {
	private String userId;
	private String userPw;
	private String name;
	private String tel;
	private String email;
	private String birth;
	private String gender;
	private String address;
	private String addressDetail;
	
	public MemberDto() {
		super();
	}

	public MemberDto(String userId, String userPw, String name, String tel, String email, String birth, String gender,
			String address, String addressDetail) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.birth = birth;
		this.gender = gender;
		this.address = address;
		this.addressDetail = addressDetail;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}
	
	
}
