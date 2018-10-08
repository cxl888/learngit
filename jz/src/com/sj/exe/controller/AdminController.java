package com.sj.exe.controller;




import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sj.exe.dao.ExeDao;
import com.sj.exe.vo.Student;
import com.sj.exe.vo.User;


@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	@Autowired
	private ExeDao dao;
	//管理员登陆
	@RequestMapping(value = "/studentInfoAll")
	public String login(User user) {
		
		return "/studentInfoAll";
	}
	
	
	@RequestMapping(value = "/updateStuStatus")
	@ResponseBody
	public String updateStuStatus(String stuId) {
		System.out.println("更新学生"+stuId);
		Student stu= new Student();
		stu.setStuId(stuId);;
		stu =dao.queryStudentById(stu);
		
		if(stu==null)
		{
			return "false";
		}
		String status = stu.geteStatus();
		System.out.println(status);
		if("1".equals(status))
		{
			stu.seteStatus("0");
		}
		else
		{
			stu.seteStatus("1");
		}
		
		//跟新数据
		dao.updateStudent(stu);
		return "success";
	}
	//添加学生--跳转
	@RequestMapping(value = "/addStu")
	@ResponseBody
	public void addStu(User user,HttpServletRequest request,HttpServletResponse response) throws Exception {
		request.getRequestDispatcher("../WEB-INF/views/addStu.jsp").forward(request,response);
	}
	//修改学生状态
		@RequestMapping(value = "/updateStatue")
		@ResponseBody
		public void updateStatue(HttpServletRequest request,HttpServletResponse response) throws Exception {
			request.getRequestDispatcher("../WEB-INF/views/updateStatue.jsp").forward(request,response);
		}
	//添加学生
	@RequestMapping(value = "/addStudent")
	@ResponseBody
	public void addStudent(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String classId = request.getParameter("class");
		String stuId = request.getParameter("id");
		String stuName = request.getParameter("name");
		String TeacherId = request.getParameter("Teacherid");
		String ExeCompany = request.getParameter("Execompany");
		String Note = request.getParameter("Note");
		Student s = new Student();
		s.setClassId(classId);
		s.setStuId(stuId);
		s.setExeCompany(ExeCompany);
		s.setStuName(stuName);
		s.setTeacherId(TeacherId);
		s.setNote(Note);
		dao.addStu(s);
	}
	
	public ExeDao getDao() {
		return dao;
	}


	public void setDao(ExeDao dao) {
		this.dao = dao;
	}
	
	
	
}
