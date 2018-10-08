package com.sj.exe.dao;

import java.util.List;

import com.sj.exe.vo.Journal;
import com.sj.exe.vo.Student;
import com.sj.exe.vo.TrainTask;
import com.sj.exe.vo.User;


public interface StudentDao {
	
	 List<Student> queryStudentAll(Student stu);
	 int insert(Student stu);
	 int updateStudent(Student stu);
	 int queryStudentCount(Student stu);
	 Student queryStudentById(Student stu);
	 User queryUser(User user); 
	
	
	 List<Journal> queryJournalAll(Journal journal);
	 Journal queryJournal(Journal journal); 
	 int  addJournal(Journal journal); 
	 int  updateJournal(Journal journal);
	
	 List<TrainTask> queryTaskAll(TrainTask task); 
	 int  addTask(TrainTask task); 
	 TrainTask queryTask(TrainTask task);
     int updateTask(TrainTask task); 

	
}
