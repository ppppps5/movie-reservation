package com.concert.dto;

public class SeatDto {
	private int sNum;
	private int cNum;
	private String sName;
	private String sUseYN;
	public SeatDto(int sNum, int cNum, String sName, String sUseYN) {
		super();
		this.sNum = sNum;
		this.cNum = cNum;
		this.sName = sName;
		this.sUseYN = sUseYN;
	}
	public SeatDto() {
		super();
	}
	public int getsNum() {
		return sNum;
	}
	public void setsNum(int sNum) {
		this.sNum = sNum;
	}
	public int getcNum() {
		return cNum;
	}
	public void setcNum(int cNum) {
		this.cNum = cNum;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsUseYN() {
		return sUseYN;
	}
	public void setsUseYN(String sUseYN) {
		this.sUseYN = sUseYN;
	}
	@Override
	public String toString() {
		return "SeatDto [sNum=" + sNum + ", cNum=" + cNum + ", sName=" + sName + ", sUseYN=" + sUseYN + "]";
	}
		
}
