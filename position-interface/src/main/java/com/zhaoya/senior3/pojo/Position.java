package com.zhaoya.senior3.pojo;

import java.io.Serializable;

import javax.validation.constraints.NotEmpty;

public class Position implements Serializable{

	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = 1L;
	private Integer pid;
	private String pname;
	private String salary;
	private Integer cid;
	private String pdate;
	private String prequirement;
	private String peducation;
	private String pwelfare;
	
	private Company company;

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getPdate() {
		return pdate;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}

	public String getPrequirement() {
		return prequirement;
	}

	public void setPrequirement(String prequirement) {
		this.prequirement = prequirement;
	}

	public String getPeducation() {
		return peducation;
	}

	public void setPeducation(String peducation) {
		this.peducation = peducation;
	}

	public String getPwelfare() {
		return pwelfare;
	}

	public void setPwelfare(String pwelfare) {
		this.pwelfare = pwelfare;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Position(Integer pid, String pname, String salary, Integer cid, String pdate, String prequirement,
			String peducation, String pwelfare, Company company) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.salary = salary;
		this.cid = cid;
		this.pdate = pdate;
		this.prequirement = prequirement;
		this.peducation = peducation;
		this.pwelfare = pwelfare;
		this.company = company;
	}

	public Position() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
}
