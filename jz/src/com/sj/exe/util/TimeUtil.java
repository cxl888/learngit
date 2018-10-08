//工具类
package com.sj.exe.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {
	public static int getWeek()
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
		Date d1 = new Date();
		Date d2 =new Date();
		try {
			d2 = sdf.parse("2017-3-3 00:00:00");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int week = (int)((d1.getTime() - d2.getTime())/(24*60*60*1000*7))+1;
		System.out.println("第："+week +"周");
		return week;
	}
}
