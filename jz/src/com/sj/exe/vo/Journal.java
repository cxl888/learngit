//实体类
package com.sj.exe.vo;

public class Journal extends PageVO{
	private static final long serialVersionUID = 111111111111L;
	private String stuId; // 学号
	private String jId; // 周日志
	private int week; // 第几周
	private String status; // 状态
	private String createDate; // 创建日期
	private String content; // 内容
	
	private String supportAdvice;//	支持和建议
	private String nextWork;//		下周安排
	private String teaDeal;//		老师对问题的处理

	public String getStuId() {
		return stuId;
	}
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}
	public String getjId() {
		return jId;
	}
	public void setjId(String jId) {
		this.jId = jId;
	}
	public int getWeek() {
		return week;
	}
	public void setWeek(int week) {
		this.week = week;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	
	public String getSupportAdvice() {
		return supportAdvice;
	}
	public void setSupportAdvice(String supportAdvice) {
		this.supportAdvice = supportAdvice;
	}
	public String getNextWork() {
		return nextWork;
	}
	public void setNextWork(String nextWork) {
		this.nextWork = nextWork;
	}
	public String getTeaDeal() {
		return teaDeal;
	}
	public void setTeaDeal(String teaDeal) {
		this.teaDeal = teaDeal;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
