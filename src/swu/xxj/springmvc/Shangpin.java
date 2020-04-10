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

import swu.xxj.entity.Commodity_image;
import swu.xxj.entity.Commodity_infor;
import swu.xxj.entity.Gouwuche;
import swu.xxj.test.Test;
/**
 * Servlet implementation class Home
 */
@WebServlet("/Shangpin")
public class Shangpin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Shangpin() {
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
		
		int commodity_id=Integer.parseInt(request.getParameter("commodity_id"));
		
		Commodity_infor commodity_infor=new Commodity_infor();
		commodity_infor=Test.findCommodity_inforByCommodity_id(commodity_id);
		List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
		gouwuche_list=Test.findAllgouwucheByUser_id(user_id);
		List<Commodity_image> commodity_image_list=new ArrayList<Commodity_image>();
		commodity_image_list=Test.getAllCommodity_imageByCommodity_id(commodity_id);
		
		request.setAttribute("commodity_image_list",commodity_image_list);
		 request.setAttribute("commodity_infor",commodity_infor);
		 request.setAttribute("gouwuche_list",gouwuche_list);
		 request.setAttribute("commodity_id",commodity_id);
		request.getRequestDispatcher("shangpin/shangpin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
