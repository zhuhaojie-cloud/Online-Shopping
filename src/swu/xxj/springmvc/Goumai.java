package swu.xxj.springmvc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import swu.xxj.entity.Commodity_infor;
import swu.xxj.test.Test;
/**
 * Servlet implementation class Delete
 */
@WebServlet("/Goumai")
public class Goumai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Goumai() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		int user_id=(Integer)session.getAttribute("user_id");
		session.setAttribute("user_id",user_id);
		
		int commodity_id=Integer.parseInt(request.getParameter("commodity_id"));
		//String action=request.getParameter("action");
		int count=Integer.parseInt(request.getParameter("counts"));
		String lei= new String(request.getParameter("lei").getBytes("iso-8859-1"),"utf-8");
		String image= new String(request.getParameter("yanse").getBytes("iso-8859-1"),"utf-8");
		java.text.SimpleDateFormat formatter=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    java.util.Date currentTime=new java.util.Date();
		String time=formatter.format(currentTime);
		
		/*else if(action.equals("home_yin")) {
			flag=NewsService.deleteHome_yinById(jianzhi_id);
		}*/
		Commodity_infor commodity_infor=Test.findCommodity_inforByCommodity_id(commodity_id);
		Test.addGouwuche(commodity_id,commodity_infor.getCommodity_name(),user_id,commodity_infor.getPrice(),count,image,lei,time);
		
		request.getRequestDispatcher("Gouwuche1").forward(request, response);
	}

}
