package swu.xxj.springmvc;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.catalina.core.ApplicationPart;

import swu.xxj.entity.Commodity_infor;
import swu.xxj.entity.Kefu_jilu;
import swu.xxj.entity.User;
import swu.xxj.test.Test;
import swu.xxj.util.Md5Encrypt;
/**
 * Servlet implementation class Userlogin
 */
@WebServlet("/Kefu_chat2")
public class Kefu_chat2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Kefu_chat2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		int user_id=(Integer)session.getAttribute("user_id");
		int commodity_id=Integer.parseInt(request.getParameter("commodity_id"));
		int sender_id=user_id;
		   System.out.println(sender_id);
		  java.text.SimpleDateFormat formatter=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    java.util.Date currentTime=new java.util.Date();
			String time=formatter.format(currentTime);
	
		   Commodity_infor commodity_infor=Test.findCommodity_inforByCommodity_id(commodity_id);
		   String image=commodity_infor.getImage();  
		   String content="<a href=\"../Shangpin?commodity_id="+commodity_id+"\"target=\"_blank\"\">"+commodity_infor.getCommodity_name()+"</a>";
		   System.out.println(content);
		   Kefu_jilu kefu_jilu=new Kefu_jilu();
		   kefu_jilu.setContent(content);
		   kefu_jilu.setImage(image);
		   kefu_jilu.setSender_id(sender_id);
		   kefu_jilu.setTime(time);
		   kefu_jilu.setUser_id(user_id);
		   Test.addKefu_jilu(kefu_jilu);
		  session.setAttribute("user_id",user_id);

		 response.sendRedirect("Kefu");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}
}