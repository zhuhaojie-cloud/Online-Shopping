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
import swu.xxj.entity.Kefu_jilu;
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
@WebServlet("/Kefu")
public class Kefu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Kefu() {
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
		List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
		List<Kefu_jilu> kefu_jilu_list=new ArrayList<Kefu_jilu>();
		kefu_jilu_list=Test.getKefu_jiluByUser_id(user_id);
		gouwuche_list=Test.findAllgouwucheByUser_id(user_id);
		request.setAttribute("kefu_jilu_list",kefu_jilu_list);
		request.setAttribute("gouwuche_list",gouwuche_list);
		request.getRequestDispatcher("kefu/kefu.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
