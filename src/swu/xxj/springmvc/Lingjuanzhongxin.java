package swu.xxj.springmvc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import swu.xxj.entity.Commodity_infor;
import swu.xxj.entity.Coupon;
import swu.xxj.entity.Gouwuche;
import swu.xxj.entity.Lunbo;
import swu.xxj.entity.Notice_infor;
import swu.xxj.entity.Shoucang_shangpin;
import swu.xxj.entity.Shoufa;
import swu.xxj.entity.User;
import swu.xxj.test.Test;
import swu.xxj.util.DividePage;
/**
 * Servlet implementation class Home
 */
@WebServlet("/Lingjuanzhongxin")
public class Lingjuanzhongxin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Lingjuanzhongxin() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//从起始页跳转到Home页，从数据库加载数据显示在index.jsp
		HttpSession session=request.getSession();
		int user_id=(Integer)session.getAttribute("user_id");
		session.setAttribute("user_id",user_id);
		
			 int juan_count=Test.getJuan_countByUser_id(user_id);
	     
	         request.setAttribute("juan_count",juan_count);
	         
	 		
	 		List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
	 		
	 		
	 		gouwuche_list=Test.findAllgouwucheByUser_id(user_id);
	 		
			
			request.setAttribute("gouwuche_list",gouwuche_list);
		
		List<Coupon> coupon_list=new ArrayList<Coupon>();
	
		 
		
		coupon_list=Test.getAllCoupon();
		
	
		
		request.setAttribute("coupon_list",coupon_list);
	
		request.getRequestDispatcher("lingjuan/lingjuan.jsp").forward(request, response);
	
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
