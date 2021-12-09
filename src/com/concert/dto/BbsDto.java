package com.concert.dto;
import java.util.Date;

public class BbsDto {
	private int bbsId,bbsHit,bbsGroup,bbsStep,bbsIndent;
	private String userId,bbsTitle,bbsContent;
	private Date bbsDate;
	
	public BbsDto() {
		super();
	}
	public BbsDto(int bbsId, int bbsHit, int bbsGroup, int bbsStep, int bbsIndent, String userId, String bbsTitle,
			String bbsContent, Date bbsDate) {
		super();
		this.bbsId = bbsId;
		this.bbsHit = bbsHit;
		this.bbsGroup = bbsGroup;
		this.bbsStep = bbsStep;
		this.bbsIndent = bbsIndent;
		this.userId = userId;
		this.bbsTitle = bbsTitle;
		this.bbsContent = bbsContent;
		this.bbsDate = bbsDate;
	}
	public int getBbsId() {
		return bbsId;
	}
	public void setBbsId(int bbsId) {
		this.bbsId = bbsId;
	}
	public int getBbsHit() {
		return bbsHit;
	}
	public void setBbsHit(int bbsHit) {
		this.bbsHit = bbsHit;
	}
	public int getBbsGroup() {
		return bbsGroup;
	}
	public void setBbsGroup(int bbsGroup) {
		this.bbsGroup = bbsGroup;
	}
	public int getBbsStep() {
		return bbsStep;
	}
	public void setBbsStep(int bbsStep) {
		this.bbsStep = bbsStep;
	}
	public int getBbsIndent() {
		return bbsIndent;
	}
	public void setBbsIndent(int bbsIndent) {
		this.bbsIndent = bbsIndent;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getBbsTitle() {
		return bbsTitle;
	}
	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}
	public String getBbsContent() {
		return bbsContent;
	}
	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}
	public Date getBbsDate() {
		return bbsDate;
	}
	public void setBbsDate(Date bbsDate) {
		this.bbsDate = bbsDate;
	}
	
}

