package swu.xxj.springmvc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import swu.xxj.entity.Coupon;
import swu.xxj.entity.Lunbo;
import swu.xxj.entity.Notice_infor;
import swu.xxj.entity.Shoufa;
import swu.xxj.test.Test;
/**
 * Servlet implementation class ListNews
 */
@WebServlet("/ListHome")
public class ListHome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListHome() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Notice_infor> notice_infor_list=new ArrayList<Notice_infor>();
		List<Lunbo> lunbo_list=new ArrayList<Lunbo>();
		List<Shoufa> shoufa_list=new ArrayList<Shoufa>();
		List<Coupon> coupon_list=new ArrayList<Coupon>();
		
		notice_infor_list=Test.getAllNotice_infor();
		lunbo_list=Test.getAllLunbo();
		shoufa_list=Test.getAllShoufa();
		coupon_list=Test.getAllCoupon();
		
		request.setAttribute("notice_infor_list",notice_infor_list);
		request.setAttribute("lunbo_list",lunbo_list);
		request.setAttribute("shoufa_list",shoufa_list);
		request.setAttribute("coupon_list",coupon_list);
		request.getRequestDispatcher("admin/list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
