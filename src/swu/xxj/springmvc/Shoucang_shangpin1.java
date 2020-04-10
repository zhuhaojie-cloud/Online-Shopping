package swu.xxj.springmvc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import swu.xxj.entity.Coupon;
import swu.xxj.entity.Lingjuan;
import swu.xxj.entity.Shoucang_shangpin;
import swu.xxj.test.Test;
/**
 * Servlet implementation class Delete
 */
@WebServlet("/Shoucang_shangpin1")
public class Shoucang_shangpin1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Shoucang_shangpin1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		int user_id=(Integer)session.getAttribute("user_id");
		session.setAttribute("user_id",user_id);
		
		int commodity_id=Integer.parseInt(request.getParameter("commodity_id"));
		String action=request.getParameter("action");
		
		java.text.SimpleDateFormat formatter=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    java.util.Date currentTime=new java.util.Date();
		String time=formatter.format(currentTime);
		
		Shoucang_shangpin shoucang_shangpin=new Shoucang_shangpin();
		
		shoucang_shangpin.setCommodity_id(commodity_id);
		shoucang_shangpin.setTime(time);
		shoucang_shangpin.setUser_id(user_id);
		 
		 Test.addShoucang_shangpin1(shoucang_shangpin);
		
		if(action.equals("gouwuche")){
		  request.getRequestDispatcher("Gouwuche1").forward(request, response);
		}else if(action.equals("home")){
			 
			 response.sendRedirect("Home?pageNum=1");
		}
		else if(action.equals("shangpin")) {
			response.sendRedirect("Shangpin?commodity_id="+commodity_id);
		}
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
