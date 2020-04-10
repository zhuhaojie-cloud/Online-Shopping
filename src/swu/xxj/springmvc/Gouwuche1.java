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
import swu.xxj.entity.Shoucang_shangpin;
import swu.xxj.test.Test;
/**
 * Servlet implementation class Home
 */
@WebServlet("/Gouwuche1")
public class Gouwuche1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gouwuche1() {
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
		List<Commodity_infor> commodity_infor_list=new ArrayList<Commodity_infor>();
		List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
		List<Shoucang_shangpin> shoucang_shangpin_list=new ArrayList<Shoucang_shangpin>();
		gouwuche_list=Test.findAllgouwucheByUser_id(user_id);
		commodity_infor_list=Test.findAllCommodity_infor();
		shoucang_shangpin_list=Test.findshoucang_shangpinByUser_id(user_id);
		request.setAttribute("commodity_infor_list",commodity_infor_list);
	    request.setAttribute("gouwuche_list",gouwuche_list);
	    request.setAttribute("shoucang_shangpin_list",shoucang_shangpin_list);
		 
		request.getRequestDispatcher("gouwuche/gouwuche.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
