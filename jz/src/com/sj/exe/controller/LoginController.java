package com.sj.exe.controller;




import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sj.exe.dao.ExeDao;
import com.sj.exe.vo.Student;
import com.sj.exe.vo.User;


@Controller
public class LoginController {
	@Autowired
	private ExeDao dao;
	@RequestMapping(value = "/login")
	public String login(User user,HttpSession session,HttpServletRequest request) {
		System.out.println("aa:"+user.getUserId());
		User realUser= dao.queryUser(user);
		if(realUser==null)
		{
			request.setAttribute("logionResult","false");
			return "/index";
		}
		else
		{
			
			session.setAttribute("user",realUser);
		}
		
		String url="/"+user.getRole()+"Index";
		return url;
	}
	
	
	@RequestMapping(value = "/toLogin")
	public String toLogin(User user) {
		return "index";
	}
	
	/*@RequestMapping(value = "/queryStudentAll")
	@ResponseBody
	public Map queryStudentAll(Student stu,HttpSession session) {
		
		User user = (User)session.getAttribute("user");
		if(stu == null)
		{
			stu=new Student();
		}
		//设置分页标志
		stu.setPageflag("11");
		
		//设置
		if("tea".equals(user.getRole()))
		{
			//设置老师
			stu.setTeacherId(user.getUserId());
			//取消分页
			stu.setPageflag(null);
		}
		//查询总数
		int total =dao.queryStudentCount(stu);
		System.out.println(total);
		 List<Student> stuList = dao.queryStudentAll(stu) ; 
		 System.out.println("list"+stuList.size());
		 stu.setResultList(stuList);
		 Map<String,Object> a =new HashMap<String,Object>();
		 a.put("rows",stuList);
		 a.put("total",total);
		 return a;
	}*/
	@RequestMapping("/queryStudentAll")
	@ResponseBody
	public Map queryStudentAll(String page,String rows){
		System.out.println(page+"!!!!!!!!!!");
		System.out.println(rows+"@@@@@@@@");
		int max = Integer.parseInt(rows);
		int start = (Integer.parseInt(page)-1)*max;
		Map map = new HashMap<String,Object>();
		map.put("start", start);
		map.put("max", max);
		List list = dao.queryStudentAll(map);
		int total = dao.queryStudentCount(new Student());
		System.out.println(total+"total");
		System.out.println(list+"list");
		Map result = new HashMap<String,Object>();
		result.put("rows", list);
		result.put("total", total);
		System.out.println(result+"result");
		return result;
	}
	@RequestMapping("/selectStu")
	@ResponseBody
	public List selectStu(){
		List list = dao.selectStu();
		System.out.println(list+"!!!!!!!!!!!!!!!!!!!!11");
		return list;
	}
	@RequestMapping(value = "/updateStatue")
	@ResponseBody
	public boolean updateStatue( HttpServletResponse response,
			  HttpServletRequest request) {
		Student stu = new Student();
		String eStatus = request.getParameter("eStatus");
		String stuId = request.getParameter("stuId");
		if(eStatus!=null){
			int es = Integer.parseInt(eStatus);
			if(es==1){
				es=0;
			}else{
				es=1;
			}
			eStatus = es+""; 
		}else{
			return false;
		}
		System.out.println(eStatus+"###########");
		stu.seteStatus(eStatus);
		stu.setStuId(stuId);
		dao.updateStatue(stu);
		return true;
	}
	
}
