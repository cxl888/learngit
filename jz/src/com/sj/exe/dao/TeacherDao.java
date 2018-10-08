package com.sj.exe.dao;

import java.util.List;

import com.sj.exe.vo.Journal;
import com.sj.exe.vo.Student;
import com.sj.exe.vo.TrainTask;
import com.sj.exe.vo.User;


public interface TeacherDao {
	
	public List<Student> queryStudentAll(Student stu);
	public int updateStudent(Student stu);
	public int queryStudentCount(Student stu);
	public Student queryStudentById(Student stu);
	public User queryUser(User user); 
	
	
	public List<Journal> queryJournalAll(Journal journal);
	public Journal queryJournal(Journal journal); 
	public int  addJournal(Journal journal); 
	public int  updateJournal(Journal journal);
	
	public List<TrainTask> queryTaskAll(TrainTask task); 
	public int  addTask(TrainTask task); 
	public TrainTask queryTask(TrainTask task);
	public int updateTask(TrainTask task); 

	
}
