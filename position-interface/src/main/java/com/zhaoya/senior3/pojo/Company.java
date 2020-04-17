package com.zhaoya.senior3.pojo;

import java.io.Serializable;

public class Company implements Serializable{

	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = 1L;
	private Integer cid;
	private String cname;
	private String cphone;
	private String caddress;
	private String arear;
	private String csize;
	private String ctype;
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCphone() {
		return cphone;
	}
	public void setCphone(String cphone) {
		this.cphone = cphone;
	}
	public String getCaddress() {
		return caddress;
	}
	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}
	public String getArear() {
		return arear;
	}
	public void setArear(String arear) {
		this.arear = arear;
	}
	public String getCsize() {
		return csize;
	}
	public void setCsize(String csize) {
		this.csize = csize;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Company(Integer cid, String cname, String cphone, String caddress, String arear, String csize,
			String ctype) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.cphone = cphone;
		this.caddress = caddress;
		this.arear = arear;
		this.csize = csize;
		this.ctype = ctype;
	}
	public Company() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
