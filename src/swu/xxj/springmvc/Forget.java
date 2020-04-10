package swu.xxj.springmvc;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Random;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import swu.xxj.entity.User;
import swu.xxj.test.Test;
import swu.xxj.util.Md5Encrypt;
import swu.xxj.util.SendqqMail;

/**
 * Servlet implementation class Forget
 */
@WebServlet("/Forget")
public class Forget extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forget() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//验证用户名和电话，如果正确则像电话号码发送新密码(前2位字母，6位随机数)，数据库查询改写密码
		//如果验证成功，还要将数据库的该条原来信息删除
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String qq=request.getParameter("qq");
		qq=qq+"@qq.com";
		User user=new User();
		user.setUserName(name);
		user.setUserPhone(phone);
		User user1=Test.find(user);
		String password="a";
	
			Random rd=new Random();
			for(int i=1;i<=5;i++){
				password=password+(rd.nextInt(10)+1);
			}
	        try {
	        	String title="欢迎使用qq邮箱找回密码";
	        	String password1="你的新密码是： <br/>"+password+"<br/>";
				SendqqMail.send(qq,password1,title);
			} catch (MessagingException | GeneralSecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				Md5Encrypt md5encrypt=new Md5Encrypt();
			    password=md5encrypt.Encrypt(password);
			    Test.updateUser(password,name);
			   
					response.sendRedirect("login/login.jsp");
		
		}
		
		
		
		
	}

