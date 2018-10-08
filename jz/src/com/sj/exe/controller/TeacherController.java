package com.sj.exe.controller;




import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.helper.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sj.exe.dao.ExeDao;
import com.sj.exe.vo.Student;
import com.sj.exe.vo.TrainTask;
import com.sj.exe.vo.User;



@Controller
@RequestMapping(value = "/tea")
public class TeacherController {
	
	//注入dao
	@Autowired
	private ExeDao dao;
	
	//去创建任务
	@RequestMapping(value = "/stuTask")
	public String stuTask(HttpSession session,HttpServletRequest request) {
		
		User user = (User)session.getAttribute("user");
		
		Student stu=new Student();
		stu.setTeacherId(user.getUserId());
		//查询总数
		List<Student> stuList = dao.selectStu() ; 
		request.setAttribute("stuList", stuList);
		request.setAttribute("stuId", stu.getStuId());
		return "/createStuTask";
	}
	
	//创建任务
	@RequestMapping(value = "/addTask")
	public String addTask(TrainTask task,HttpSession session,HttpServletRequest request) {
		if(task!=null&&!StringUtil.isBlank(task.getStuId()))
		{
			TrainTask itest=dao.queryTask(task);
			if(itest==null)
			{
				dao.addTask(task);
			}
			else
			{
				dao.updateTask(task);
			}
			
			System.out.println("task:"+task.getStuId());
			System.out.println("保存成功");
		}
		User user = (User)session.getAttribute("user");
		
		Student stu=new Student();
		stu.setTeacherId(user.getUserId());
		//查询总数
		List<Student> stuList = dao.selectStu() ; 
		request.setAttribute("stuList", stuList);
		request.setAttribute("task", task);
		request.setAttribute("stuId", task.getStuId());
		request.setAttribute("result", "success");
		return "/createStuTask";
	}
	
	@RequestMapping(value = "/queryStuTask")
	public String queryStuTask(User user) {
		System.out.println("老师查询实训任务书：");
		
		return "/queryStuTask";
	}
	
	@RequestMapping(value = "/studentInfoAll")
	public String studentInfoAll(User user) {
		return "/teaStudentInfoAll";
	}
	
	
	@RequestMapping(value = "/queryAllStudent")
	@ResponseBody
	public Map queryAllStudent(Student stu,String query_stu,HttpSession session) {
		
		User user = (User)session.getAttribute("user");
		if(stu == null)
		{
			stu=new Student();
		}
		stu.setPageflag("11");
		stu.setTeacherId(user.getUserId());
		int total =dao.queryStudentCount(stu);
		//设置起始页
		//stu.setLimit(stu.getLimit());
		//stu.setOffset(stu.getOffset());
		 List<Student> stuList = dao.queryAllStudent(stu) ; 
		 System.out.println("list"+stuList.size());
		 Map<String,Object> a =new HashMap<String,Object>();
		 a.put("rows",stuList);
		 a.put("total",total);
		 return a;
	}

	@RequestMapping(value = "/queryTaskInfo")
	@ResponseBody
	public TrainTask queryTaskInfo(String stuId,HttpSession session) {
		TrainTask task = new TrainTask();
		task.setStuId(stuId);
		return dao.queryTask(task);
	}

	public ExeDao getDao() {
		return dao;
	}

	public void setDao(ExeDao dao) {
		this.dao = dao;
	}
	
	
	
}
