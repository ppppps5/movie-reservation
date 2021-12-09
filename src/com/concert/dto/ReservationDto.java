package com.concert.dto;

import java.util.Date;

public class ReservationDto {
	private int rNum,cNum;
	private String userId,SNAME;
	private Date rDate;
	public int getrNum() {
		return rNum;
	}
	
	public ReservationDto() {
		super();
	}

	public ReservationDto(int rNum, int cNum, String userId, String sNAME, Date rDate) {
		super();
		this.rNum = rNum;
		this.cNum = cNum;
		this.userId = userId;
		SNAME = sNAME;
		this.rDate = rDate;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}
	public int getcNum() {
		return cNum;
	}
	public void setcNum(int cNum) {
		this.cNum = cNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getSNAME() {
		return SNAME;
	}
	public void setSNAME(String sNAME) {
		SNAME = sNAME;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	
}