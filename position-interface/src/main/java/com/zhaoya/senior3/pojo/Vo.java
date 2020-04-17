package com.zhaoya.senior3.pojo;

import java.io.Serializable;

public class Vo implements Serializable{

	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = 1L;
	private String pname;
	private String cname;
	private String start;
	private String end;
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public Vo(String pname, String cname, String start, String end) {
		super();
		this.pname = pname;
		this.cname = cname;
		this.start = start;
		this.end = end;
	}
	public Vo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
