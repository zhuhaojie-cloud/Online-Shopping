package swu.xxj.springmvc;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import swu.xxj.entity.User;
import swu.xxj.test.Test;
import swu.xxj.util.Md5Encrypt;

/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/UserRegister")
//@MultipartConfig()     //必须要有这个
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegister() {
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
		String name= new String(request.getParameter("username").getBytes("iso-8859-1"),"utf-8");
		String password= new String(request.getParameter("password").getBytes("iso-8859-1"),"utf-8");
		String dizhi= new String(request.getParameter("xuehao").getBytes("iso-8859-1"),"utf-8");
		String qq= new String(request.getParameter("qq").getBytes("iso-8859-1"),"utf-8");
		String phone= new String(request.getParameter("phone").getBytes("iso-8859-1"),"utf-8");
		String img=null;
		Md5Encrypt md5encrypt=new Md5Encrypt();
		password=md5encrypt.Encrypt(password);
		
		 Test test = new Test();
		   User user=new User();
		   user.setUserAddress(dizhi);
		   user.setUserName(name);
		   user.setUserPassword(password);
		   user.setUserPhone(phone);
		   user.setQq(qq);
		   user.setMenber_id(0);
		   user.setImage("");
		   test.addUser(user);
			response.sendRedirect(request.getContextPath()+"/login/login.jsp");
	}

}
