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
import swu.xxj.entity.Gouwuche;
import swu.xxj.entity.Lunbo;
import swu.xxj.test.Test;
import swu.xxj.util.DividePage;
/**
 * Servlet implementation class Home
 */
@WebServlet("/Fenlei")
public class Fenlei extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fenlei() {
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
		String action=request.getParameter("action");
        
		List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
		gouwuche_list=Test.findAllgouwucheByUser_id(user_id);
		
		if(action.equals("shouji")) {
	      int recordCount;
		  recordCount=Test.getItemCount();  //获得总条数
		  int currentPage=1;   //当前页是第一页
	        String pageNum=request.getParameter("pageNum");
	        if(pageNum!=null){
	            currentPage=Integer.parseInt(pageNum);
	        }
	        DividePage pUtil=new DividePage(12,recordCount,currentPage);
	        //获取上下限
	        int start=pUtil.getFromIndex();
	        int end=pUtil.getToIndex();  
	        List<Commodity_infor> commodity_infor_list=new ArrayList<Commodity_infor>();
	        commodity_infor_list= Test.getAllCommodity_infor(start,end);
		  
	    
	      /*commodity_infor_list=Test.findAllCommodity_infor();*/
			System.out.println(commodity_infor_list.size());
			request.setAttribute("pUtil",pUtil);
			request.setAttribute("recordCount",recordCount);
	      request.setAttribute("gouwuche_list",gouwuche_list);
	      request.setAttribute("commodity_infor_list",commodity_infor_list);
		  request.getRequestDispatcher("fenlei/index.jsp").forward(request, response);
		}
		else {
			
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
