package swu.xxj.test;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class aa {

	public static void main(String[] args) throws ParseException {
		// TODO Auto-generated method stub
		Date date=new Date();
		String formatStr2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);//Date格式化为String
		
		DateFormat format= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//String转换为Date
		Date date1=format.parse(formatStr2);
		System.out.print(formatStr2);
	    System.out.print(date1);
	}

}
