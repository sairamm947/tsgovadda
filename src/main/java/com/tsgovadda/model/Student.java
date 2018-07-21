package com.tsgovadda.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="StudentDetails")
public class Student {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int sid;
	@NotEmpty
	@NotNull(message="student name is not null")
	private String sname;
	private String susername;
	private String spassword;
	@Transient
	private String scpassword;
	@Email
	private String semail;
	@Email
	@Transient
	private String scemail;
	
	
	public String getScpassword() {
		return scpassword;
	}
	public void setScpassword(String scpassword) {
		this.scpassword = scpassword;
	}
	public String getScemail() {
		return scemail;
	}
	public void setScemail(String scemail) {
		this.scemail = scemail;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSusername() {
		return susername;
	}
	public void setSusername(String susername) {
		this.susername = susername;
	}
	public String getSpassword() {
		return spassword;
	}
	public void setSpassword(String spassword) {
		this.spassword = spassword;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	@Override
	public String toString() {
		return "Student [sid=" + sid + ", sname=" + sname + ", susername=" + susername + ", spassword=" + spassword
				+ ", scpassword=" + scpassword + ", semail=" + semail + ", scemail=" + scemail + "]";
	}
	public Student() {
		super();
	}
	
	
}
