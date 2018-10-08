package com.sj.exe.controller;




import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sj.exe.dao.ExeDao;
import com.sj.exe.util.TimeUtil;
import com.sj.exe.vo.Journal;
import com.sj.exe.vo.Student;
import com.sj.exe.vo.TrainTask;
import com.sj.exe.vo.User;


@Controller
@RequestMapping(value = "/stu")
public class StudentController {
	//注入dao
		@Autowired
		private ExeDao dao;
		
		//跳转到学生信息
		@RequestMapping(value = "/toUpdateStu")
		public String toUpdateStu(Student stu,HttpSession session,HttpServletRequest request) {
			
			User user = (User)session.getAttribute("user");
			
			stu=new Student();
			stu.setStuId(user.getUserId());
			//查询总数
			List<Student> stuList = dao.queryAllStudent(stu) ; 
			stu=stuList.get(0);
			request.setAttribute("stu", stu);
			return "/updateStuInfo";
		}
		
		//跟新学生信息
		@RequestMapping(value = "/updateStu")
		public String updateStu(Student stu,HttpSession session,HttpServletRequest request) {
			User user = (User)session.getAttribute("user");
			stu.setStuId(user.getUserId());
			int a= dao.updateStudent(stu);
			stu=dao.queryStudentById(stu); 
			request.setAttribute("stu", stu);
			return "/updateStuInfo";
		}
		
		
		//查看实训任务
		@RequestMapping(value = "/stuLookTask")
		public String stuLookTask(HttpSession session,HttpServletRequest request) {
			
			User user = (User)session.getAttribute("user");
			
			Student stu = new Student();
			stu.setStuId(user.getUserId());
			stu = dao.queryStudentById(stu); 
			request.setAttribute("tTtu", stu);
			
			TrainTask task = new TrainTask();
			task.setStuId(user.getUserId());
			task=dao.queryTask(task);
			request.setAttribute("task", task);
			
			return "/stuLookTask";
		}
		//增加周记
		@RequestMapping(value = "/toAddJournal")
		public String toAddJournal(HttpSession session, HttpServletRequest request) {
			User user = (User)session.getAttribute("user");
			String stuId = user.getUserId();
		//获得第几周
		int week =TimeUtil.getWeek();
		List<Journal> jList = new ArrayList<Journal>();
		Journal journal = null;
		for(int i = 0;i<week;i++)
		{
			journal = new Journal();
			journal.setWeek(i+1);
			journal.setStuId(stuId);
			jList.add(journal);
		}
		request.setAttribute("week", week);
		request.setAttribute("jList", jList);
		return "/addJournal";
		}
		
		//增加周记
		@RequestMapping(value = "/queryJournal")
		public String queryJournal(Journal journal,HttpSession session,HttpServletRequest request) {
			User user = (User)session.getAttribute("user");
			journal.setStuId(user.getUserId());
			Journal qJournal = dao.queryJournal(journal);
			if(qJournal!=null)
			{
				journal=qJournal;
			}
			int aa = journal.getWeek();
			System.out.println("week"+aa);
			request.setAttribute("journal", qJournal);
			request.setAttribute("week", journal.getWeek());
			request.setAttribute("content", journal.getContent());
			request.setAttribute("supportAdvice", journal.getSupportAdvice());
			request.setAttribute("nextWork", journal.getNextWork());
			System.out.println(journal.getWeek());
			return "/frameJournal";
		}
		
		//增加周记
		@RequestMapping(value = "/addJournal")
		public String addJournal(Journal journal,HttpSession session,HttpServletRequest request) {
			User user = (User)session.getAttribute("user");
			journal.setStuId(user.getUserId());
			Journal qJournal = dao.queryJournal(journal);
			if(qJournal==null)
			{
				dao.addJournal(journal);
			}
			else
			{
				dao.updateJournal(journal);
			}
			request.setAttribute("week", journal.getWeek());
			request.setAttribute("content", journal.getContent());
			request.setAttribute("supportAdvice", journal.getSupportAdvice());
			request.setAttribute("nextWork", journal.getNextWork());
			return "/frameJournal";
		}
}
