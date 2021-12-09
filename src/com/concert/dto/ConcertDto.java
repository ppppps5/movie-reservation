package com.concert.dto;

import java.util.Date;

public class ConcertDto {
	private int cNum;
	private String cName;
	private String cDirector;
	private Date cDate;
	private String cUseYN;
	private int cPrice;
	private int cMaxPeople;
	private String cContent;
	private String imgSrc;
	

	public ConcertDto(int cNum, String cName, String cDirector, Date cDate, String cUseYN, int cPrice, int cMaxPeople,
			String cContent, String imgSrc) {
		super();
		this.cNum = cNum;
		this.cName = cName;
		this.cDirector = cDirector;
		this.cDate = cDate;
		this.cUseYN = cUseYN;
		this.cPrice = cPrice;
		this.cMaxPeople = cMaxPeople;
		this.cContent = cContent;
		this.imgSrc = imgSrc;
	}
	public String getImgSrc() {
		return imgSrc;
	}
	public void setImgSrc(String imgSrc) {
		this.imgSrc = imgSrc;
	}
	public int getcPrice() {
		return cPrice;
	}
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}

	public int getcNum() {
		return cNum;
	}
	public void setcNum(int cNum) {
		this.cNum = cNum;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getcDirector() {
		return cDirector;
	}
	public void setcDirector(String cDirector) {
		this.cDirector = cDirector;
	}
	public Date getcDate() {
		return cDate;
	}
	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}
	public String getcUseYN() {
		return cUseYN;
	}
	public void setcUseYN(String cUseYN) {
		this.cUseYN = cUseYN;
	}
	public int getcMaxPeople() {
		return cMaxPeople;
	}
	public void setcMaxPeople(int cMaxPeople) {
		this.cMaxPeople = cMaxPeople;
	}
	public String getcContent() {
		return cContent;
	}
	public void setcContent(String cContent) {
		this.cContent = cContent;
	}
	public ConcertDto() {
		super();
	}
	@Override
	public String toString() {
		return "ConcertDto [cNum=" + cNum + ", cName=" + cName + ", cDirector=" + cDirector + ", cDate=" + cDate
				+ ", cUseYN=" + cUseYN + ", cPrice=" + cPrice + ", cMaxPeople=" + cMaxPeople + ", cContent=" + cContent
				+ ", imgSrc=" + imgSrc + "]";
	}
	
	
}
