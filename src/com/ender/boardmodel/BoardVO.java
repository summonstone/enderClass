package com.ender.boardmodel;

import java.io.Serializable;

public class BoardVO implements Serializable {
	private int bo_num;
	private String bo_subject;
	private String bo_id;
	private String bo_content;
	private String bo_date;
	private int bo_readcount;
	private String part;
	private String searchData;

	public BoardVO() {
		// TODO Auto-generated constructor stub
	}

	public BoardVO(String part, String searchData) {
		super();
		this.part = part;
		this.searchData = searchData;
	}

	public BoardVO(String bo_subject, String bo_id, String bo_content) {
		super();
		this.bo_subject = bo_subject;
		this.bo_id = bo_id;
		this.bo_content = bo_content;
	}

	public BoardVO(int bo_num, String bo_subject, String bo_id, String bo_content, String bo_date, int bo_readcount) {
		super();
		this.bo_num = bo_num;
		this.bo_subject = bo_subject;
		this.bo_id = bo_id;
		this.bo_content = bo_content;
		this.bo_date = bo_date;
		this.bo_readcount = bo_readcount;
	}

	public int getBo_num() {
		return bo_num;
	}

	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}

	public String getBo_subject() {
		return bo_subject;
	}

	public void setBo_subject(String bo_subject) {
		this.bo_subject = bo_subject;
	}

	public String getBo_id() {
		return bo_id;
	}

	public void setBo_id(String bo_id) {
		this.bo_id = bo_id;
	}

	public String getBo_content() {
		return bo_content;
	}

	public void setBo_content(String bo_content) {
		this.bo_content = bo_content;
	}

	public String getBo_date() {
		return bo_date;
	}

	public void setBo_date(String bo_date) {
		this.bo_date = bo_date;
	}

	public int getBo_readcount() {
		return bo_readcount;
	}

	public void setBo_readcount(int bo_readcount) {
		this.bo_readcount = bo_readcount;
	}

	public String getPart() {
		return part;
	}

	public void setPart(String part) {
		this.part = part;
	}

	public String getSearchData() {
		return searchData;
	}

	public void setSearchData(String searchData) {
		this.searchData = searchData;
	}

	@Override
	public String toString() {
		return "BoardVO [bo_num=" + bo_num + ", bo_subject=" + bo_subject + ", bo_id=" + bo_id + ", bo_content="
				+ bo_content + ", bo_date=" + bo_date + ", bo_readcount=" + bo_readcount + ", part=" + part
				+ ", searchData=" + searchData + "]";
	}

}
