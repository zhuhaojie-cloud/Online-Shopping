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
import swu.xxj.test.Test;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/Sousuo")
public class Sousuo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sousuo() {
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
		
		String sousuo_lei=request.getParameter("sousuo_lei");
		String content=request.getParameter("content");
		
		List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
		gouwuche_list=Test.findAllgouwucheByUser_id(user_id);
		if(sousuo_lei.equals("…Ã∆∑")) {
			System.out.println(sousuo_lei+content);
		  List<Commodity_infor> commodity_infor_list=new ArrayList<Commodity_infor>();
		  commodity_infor_list=Test.getCommodity_inforBySearch("%"+content+"%");
		  request.setAttribute("commodity_infor_list", commodity_infor_list);
		  System.out.println(commodity_infor_list.size());
		}
		request.setAttribute("content",content);
		request.setAttribute("gouwuche_list",gouwuche_list);
		request.getRequestDispatcher("fenlei/index2.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
