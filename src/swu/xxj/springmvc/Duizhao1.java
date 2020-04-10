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
import swu.xxj.entity.Duizhao;
import swu.xxj.entity.Gouwuche;
import swu.xxj.test.Test;
/**
 * Servlet implementation class Delete
 */
@WebServlet("/Duizhao1")
public class Duizhao1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Duizhao1() {
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
		
		String commodity_ids[] = request.getParameterValues("commodity_id");
		System.out.println(commodity_ids.length+"a");
	
		List<Gouwuche> gouwuche_list=new ArrayList<Gouwuche>();
		gouwuche_list=Test.findAllgouwucheByUser_id(user_id);
		
			List<Commodity_infor> commodity_infor_list=new ArrayList<Commodity_infor>();
			for(int i=0;i<commodity_ids.length;i++) {
	          Commodity_infor commodity_infor=Test.findCommodity_inforByCommodity_id(Integer.parseInt(commodity_ids[i]));
		     /* Duizhao duizhao=new Duizhao();
		      duizhao.setCommodity_id(Integer.parseInt(commodity_ids[i]));
		      duizhao.setUser_id(user_id);
		      duizhao.setImage(commodity_infor.getImage());
		      duizhao.setPrice(commodity_infor.getPrice());
	          Test.addDuizhao1(duizhao);*/
	          commodity_infor_list.add(commodity_infor);
			}
			request.setAttribute("commodity_infor_list",commodity_infor_list);
			request.setAttribute("gouwuche_list",gouwuche_list);
		  request.getRequestDispatcher("duizhao/index.jsp").forward(request, response);
		

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
