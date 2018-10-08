package com.sj.exe.vo;

public class Student extends PageVO{
	private static final long serialVersionUID = 12L;
	private String stuId; 
	private String stuName;
	private String classid;
	private String eStatus;//实习状态
	private String Teacherid ;//老师id
	private String ExeCompany ;//实训单位
	private String Note ;//备注
	private String phone ;//电话
	private String Email ;//邮箱
	private String qq ;
	private String weekCount;//周日志数量
	public String getStuId() {
		return stuId;
	}
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public String getClassId() {
		return classid;
	}
	public void setClassId(String classId) {
		this.classid = classId;
	}
	public String geteStatus() {
		return eStatus;
	}
	public void seteStatus(String eStatus) {
		this.eStatus = eStatus;
	}
	public String getTeacherId() {
		return Teacherid;
	}
	public void setTeacherId(String Teacherid) {
		this.Teacherid = Teacherid;
	}
	public String getExeCompany() {
		return ExeCompany;
	}
	public void setExeCompany(String ExeCompany) {
		this.ExeCompany = ExeCompany;
	}
	public String getNote() {
		return Note;
	}
	public void setNote(String Note) {
		this.Note = Note;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String Email) {
		this.Email = Email;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getWeekCount() {
		return weekCount;
	}
	public void setWeekCount(String weekCount) {
		this.weekCount = weekCount;
	}
	public void setTeacherid(String teacherid2) {
		// TODO Auto-generated method stub
		
	}
	public void setExecompany(String execompany2) {
		// TODO Auto-generated method stub
		
	}
	
}
