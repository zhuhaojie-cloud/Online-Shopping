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
import swu.xxj.test.Test;
/**
 * Servlet implementation class Delete
 */
@WebServlet("/Lingjuan1")
public class Lingjuan1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Lingjuan1() {
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
		
		int id=Integer.parseInt(request.getParameter("id"));
		String action=request.getParameter("action");
		
		java.text.SimpleDateFormat formatter=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    java.util.Date currentTime=new java.util.Date();
		String time=formatter.format(currentTime);
		if(action.equals("aaa")){
		  Test.deleteGouwucheByid(id);
		  request.getRequestDispatcher("Gouwuche1").forward(request, response);
		}else if(action.equals("home")){
			 Coupon coupon=new Coupon();
			 Lingjuan lingjuan=new Lingjuan();
			 
			 lingjuan.setCoupon_id(id);
			 lingjuan.setTime(time);
			 lingjuan.setUser_id(user_id);
			 coupon=Test.getCouponById(id);
			 coupon.setReceive_count(coupon.getReceive_count()+1);
			 Test.updateCoupon1(coupon);
			 
			 Test.addLingjuan1(lingjuan);
			 response.sendRedirect("Home");
		}
		else if(action.equals("lingjuanzhongxin")) {
			Coupon coupon=new Coupon();
			 Lingjuan lingjuan=new Lingjuan();
			 
			 lingjuan.setCoupon_id(id);
			 lingjuan.setTime(time);
			 lingjuan.setUser_id(user_id);
			 coupon=Test.getCouponById(id);
			 coupon.setReceive_count(coupon.getReceive_count()+1);
			 Test.updateCoupon1(coupon);
			 
			 Test.addLingjuan1(lingjuan);
			response.sendRedirect("Lingjuanzhongxin");
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
