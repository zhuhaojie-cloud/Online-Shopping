package swu.xxj.springmvc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import swu.xxj.entity.User;
import swu.xxj.test.Test;
import swu.xxj.util.Md5Encrypt;
/**
 * Servlet implementation class Userlogin
 */
@WebServlet("/Userlogin")
public class Userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userlogin() {
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
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		int user_id=(Integer)session.getAttribute("user_id");
		String userName= new String(request.getParameter("userName").getBytes("iso-8859-1"),"utf-8");
		  String userPassword=request.getParameter("userPassword");
		   Md5Encrypt md5encrypt=new Md5Encrypt();
		   userPassword=md5encrypt.Encrypt(userPassword);
		   
		   User user=Test.checkUserExist(userName, userPassword);
		   System.out.println(user.getId());
		   user_id=user.getId();
		   String user_name=user.getUserName();	
		   session.setAttribute("user_name",user_name);
		   session.setAttribute("user_id",user_id);
		   if(user==null)
		   {  
			  System.out.print("²»ÕýÈ·");
		   }else if(user.getUserName().equals("admin")) {
			  
		       response.sendRedirect(request.getContextPath()+"/admin/mian.jsp");
		   }
		   else {
			
			  response.sendRedirect("Home?pageNum=1");
		   }
	}
}