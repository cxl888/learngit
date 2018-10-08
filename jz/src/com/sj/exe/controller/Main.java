package com.sj.exe.controller;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;    
import java.sql.ResultSet;    
import java.sql.Statement; 

import java.sql.Connection;
import java.sql.DriverManager;

public class Main {
 public static void main(String [] args)
 {
  String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
  String dbURL="jdbc:sqlserver://localhost:1433;DatabaseName=test";
  String userName="sa";
  String userPwd="caoxinlei104";
  try
  {
   Class.forName(driverName);
   Connection dbConn=DriverManager.getConnection(dbURL,userName,userPwd);
    System.out.println("数据库连接成功");
  }
  catch(Exception e)
  {
   e.printStackTrace();
   System.out.print("失败");
  }    
 }
}