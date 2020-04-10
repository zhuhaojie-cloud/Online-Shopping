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

import swu.xxj.entity.Kefu_jilu;
import swu.xxj.entity.User;
import swu.xxj.test.Test;
import swu.xxj.util.Md5Encrypt;
/**
 * Servlet implementation class Userlogin
 */
@WebServlet("/Kefu_chat")
@MultipartConfig()     //����Ҫ�����
public class Kefu_chat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Kefu_chat() {
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
		int sender_id=user_id;
		String content= new String(request.getParameter("content").getBytes("iso-8859-1"),"utf-8");
		  java.text.SimpleDateFormat formatter=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    java.util.Date currentTime=new java.util.Date();
			String time=formatter.format(currentTime);
			
			String path = this.getServletContext().getRealPath("/");	//��ȡ��������ַ
			Part p = request.getPart("uploadImg");//��ȡ�û�ѡ����ϴ��ļ�
			String fname2="";
			if (p.getContentType().contains("image")) {					// �������ϴ���ͼ���ļ�
				ApplicationPart ap = (ApplicationPart) p;
				//��ȡ�ϴ��ļ���
				String fname1 = ap.getSubmittedFileName();
				System.out.println(ap.getSubmittedFileName());
				
				//���´���ȡ���ļ��ĺ�׺��
				int dot=fname1.lastIndexOf(".");
				String extentname=fname1.substring(dot+1);
				//���´���ȡ�õ�ǰ����
				Date now = new Date();
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");//���Է�����޸����ڸ�ʽ
				String firstname = dateFormat.format( now ); 
				//���������
				Random rd=new Random();
				String xxxx="";
				for(int i=1;i<=4;i++){
					xxxx=xxxx+(rd.nextInt(10)+1);
				}
				//ƴ���ļ���
				firstname=firstname+xxxx;
				fname2=firstname+"."+extentname;
				//д�� web ��Ŀ��·���µ�upload�ļ�����
				p.write(path + "/upload/" + fname2);
				System.out.print(path + "/upload/" + fname2);
			}
			else{
				  System.out.println("aa");
			}
			String pic_url="upload/" + fname2;
			System.out.println(pic_url+"mm");
		    String image=pic_url;
		    if(image.equals("upload/")) {
		    	image=null;
		    }
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
}