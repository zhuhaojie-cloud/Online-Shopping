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
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
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

		int recordCount;
		   recordCount=Test.getItemCount();  //获得总条数
		   int currentPage=1;   //当前页是第一页
	        String pageNum=request.getParameter("pageNum");
	        if(pageNum!=null){
	            currentPage=Integer.parseInt(pageNum);
	        }
	        DividePage pUtil=new DividePage(10,recordCount,currentPage);
	        //获取上下限
	        int start=pUtil.getFromIndex();
	        int end=pUtil.getToIndex();  
	        List<Commodity_infor> commodity_infor_list1=new ArrayList<Commodity_infor>();
	        commodity_infor_list1= Test.getAllCommodity_infor(start,end);
	        request.setAttribute("pUtil",pUtil);
		if(user_id!=0) {
			 int juan_count=Test.getJuan_countByUser_id(user_id);
	         User user=new User();
	         user=Test.getUserByID(user_id);
	         request.setAttribute("juan_count",juan_count);
	 		request.setAttribute("user",user);
	 		List<Shoucang_shangpin> shoucang_shangpin_list=new ArrayList<Shoucang_shangpin>();
	 		List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
	 		
	 		shoucang_shangpin_list=Test.findshoucang_shangpinByUser_id(user_id);
	 		gouwuche_list=Test.findAllgouwucheByUser_id(user_id);
	 		
			request.setAttribute("shoucang_shangpin_list",shoucang_shangpin_list);
			request.setAttribute("gouwuche_list",gouwuche_list);
		}	
	
		
		List<Lunbo> lunbo_list=new ArrayList<Lunbo>();
		List<Shoufa> shoufa_list=new ArrayList<Shoufa>();
		List<Coupon> coupon_list=new ArrayList<Coupon>();
		List<Notice_infor> notice_infor_list=new ArrayList<Notice_infor>();
		List<Commodity_infor> commodity_infor_list=new ArrayList<Commodity_infor>();
		 
		lunbo_list=Test.getAllLunbo();
		coupon_list=Test.getAllCoupon();
		shoufa_list=Test.getAllShoufa();
		notice_infor_list=Test.getAllNotice_infor();
		commodity_infor_list=Test.findAllCommodity_infor();
	
		
		request.setAttribute("commodity_infor_list",commodity_infor_list);
		request.setAttribute("shoufa_list",shoufa_list);
		request.setAttribute("lunbo_list",lunbo_list);
		request.setAttribute("coupon_list",coupon_list);
	
		request.setAttribute("notice_infor_list",notice_infor_list);
		request.setAttribute("commodity_infor_list1",commodity_infor_list1);
		if(user_id!=0) {
		request.getRequestDispatcher("home/home.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("home/home1.jsp").forward(request, response);
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
