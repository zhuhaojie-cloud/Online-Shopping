package swu.xxj.springmvc;

import java.io.IOException;
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

import swu.xxj.entity.User;
import swu.xxj.test.Test;

/**
 * Servlet implementation class Tou
 */
@WebServlet("/Tou")
@MultipartConfig()     //必须要有这个
public class Tou extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tou() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//根据name，插入img
				response.setContentType("text/html;charset=utf-8");
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				HttpSession session=request.getSession();
				int user_id=(Integer)session.getAttribute("user_id");
				//String img=request.getParameter("uploadImg");
				session.setAttribute("user_id",user_id);
				//session.setAttribute("img",img);
				String path = this.getServletContext().getRealPath("/");	//获取服务器地址
				Part p = request.getPart("uploadImg");//获取用户选择的上传文件
				String fname2="";
				if (p.getContentType().contains("image")) {					// 仅处理上传的图像文件
					ApplicationPart ap = (ApplicationPart) p;
					//获取上传文件名
					String fname1 = ap.getSubmittedFileName();
					System.out.println(ap.getSubmittedFileName());
					
					//以下代码取得文件的后缀名
					int dot=fname1.lastIndexOf(".");
					String extentname=fname1.substring(dot+1);
					//以下代码取得当前日期
					Date now = new Date();
					SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");//可以方便地修改日期格式
					String firstname = dateFormat.format( now ); 
					//产生随机数
					Random rd=new Random();
					String xxxx="";
					for(int i=1;i<=4;i++){
						xxxx=xxxx+(rd.nextInt(10)+1);
					}
					//拼接文件名
					firstname=firstname+xxxx;
					fname2=firstname+"."+extentname;
					//写入 web 项目根路径下的upload文件夹中
					p.write(path + "/upload/" + fname2);
					System.out.print(path + "/upload/" + fname2);
				}
				else{
					  System.out.println("aa");
				}
				String pic_url="upload/" + fname2;
				System.out.println(pic_url+"mm");
				//System.out.println(img+"qq");
				User user=new User();
		        user=Test.getUserByID(user_id);
		        user.setImage(pic_url);
				Test.updateUser1(user);
               response.sendRedirect("Home?pageNum=1");
	}

}
