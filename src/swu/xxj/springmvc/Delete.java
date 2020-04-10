package swu.xxj.springmvc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import swu.xxj.test.Test;
/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
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
		if(action.equals("gouwuche")){
		  Test.deleteGouwucheByid(id);
		  request.getRequestDispatcher("Gouwuche1").forward(request, response);
		}else if(action.equals("home_gouwuche")){
			 Test.deleteGouwucheByid(id);
			  request.getRequestDispatcher("Home").forward(request, response);
		}else if(action.equals("home_shoucang_shangpin")){
			 Test.deleteShoucang_shangpinByid(id);
			  request.getRequestDispatcher("Home?pageNum=1").forward(request, response);
		}
		/*else if(action.equals("home_yin")) {
			flag=NewsService.deleteHome_yinById(jianzhi_id);
		}*/
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
