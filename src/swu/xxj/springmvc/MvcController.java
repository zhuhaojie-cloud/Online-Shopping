package swu.xxj.springmvc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import swu.xxj.entity.Gouwuche;
import swu.xxj.entity.User;
import swu.xxj.test.Test;
import swu.xxj.util.Md5Encrypt;


@Controller  //说明该类椒一个springmvc的一个控制器
public class MvcController {
   @RequestMapping("/mvc/login")
   public String requestparam(Model model,@RequestParam("userName")String userName,@RequestParam("userPassword")String userPassword){
	   System.out.println(userName+userPassword);
	   Test test = new Test();
	   List<Gouwuche> gouwuchelist;
	   Md5Encrypt md5encrypt=new Md5Encrypt();
	   userPassword=md5encrypt.Encrypt(userPassword);
	   User user=test.checkUserExist(userName, userPassword);
	   int user_id=user.getId();
	   if(user==null)
	   {  
		  System.out.print("不正确");
	      return "error";
	   }else {
		  gouwuchelist=test.findAllgouwucheByUser_id(user_id);
		  model.addAttribute("gouwuchelist",gouwuchelist);
		  
		  return "home";
	   }
   }
   @RequestMapping("/mvc/login1")
   public void requestparam1(HttpServletRequest request,HttpServletResponse response) throws IOException{
	   
	  String userName=request.getParameter("userName");
	  String userPassword=request.getParameter("userPassword");
	   Md5Encrypt md5encrypt=new Md5Encrypt();
	   userPassword=md5encrypt.Encrypt(userPassword);
	   
	   User user=Test.checkUserExist(userName, userPassword);
	   System.out.println(user.getId());
	   int user_id=user.getId();
	   if(user==null)
	   {  
		  System.out.print("不正确");
	   }else if(user.getUserName().equals("admin")) {
		   HttpSession session=request.getSession();
		   session.setAttribute("user_id", user_id);
	       response.sendRedirect(request.getContextPath()+"/admin/main.jsp");
	   }
	   else {
		  HttpSession session=request.getSession();
		  session.setAttribute("user_id", user_id);
		  response.sendRedirect("../Home?pageNum=1");
	   }
   }
   @RequestMapping("/mvc/register")
   public String requestparam(@RequestParam("userName")String userName,@RequestParam("userPassword")String userPassword,@RequestParam("userAddress")String userAddress,@RequestParam("userPhone")String userPhone,@RequestParam("qq")String qq){
	   Test test = new Test();
	   User user=new User();
	   Md5Encrypt md5encrypt=new Md5Encrypt();
	   userPassword=md5encrypt.Encrypt(userPassword);
	   user.setUserAddress(userAddress);
	   user.setUserName(userName);
	   user.setUserPassword(userPassword);
	   user.setUserPhone(userPhone);
	   user.setQq(qq);
	   user.setMenber_id(0);
	   user.setImage("");
	   test.addUser(user);
	   return "login";
   }
   @RequestMapping("/mvc/tiao")
   public String tiao(){
	   
	   return "login";
   }
   @RequestMapping("/mvc/tiao1")
   public String tiao1(){
	   
	   return "register";
   }
   /**
 * @return ***/
 /*  @RequestMapping("/hello2")*/
  /* public ModelAndView testModelAndView(){*/
 /*  public  ModelAndView testModelAndView(){
	   String viewname="hello";
	   User user=new User(1001,"tom",20,"aaa");
	   ModelAndView mv=new ModelAndView(viewname);
	   System.out.print(user.getUserName());
	   /*mv.addObject("time",new Date());*/
	  /* mv.addObject("user",user);
	    return mv;
   }*/
 /*  @RequestMapping("/hello3")*/
   /* public ModelAndView testModelAndView(){*/
   /* public String testMap(Map<String,Object> map){
	   map.put("names",Arrays.asList("tom","jerry","json"));
	   return "hello";
 	   
    }*/
   @RequestMapping("/mvc/hello4")
   /* public ModelAndView testModelAndView(){*/
       public String testMap(Model model){
	   model.addAttribute("names",Arrays.asList("tom","jerry","json"));
	   return "hello";
 	   
    }
  /* @RequestMapping("/hello2")
    public  ModelAndView testModelAndView1(){
 	   String viewname="hello";
 	   Student stu=new Student("1001","tom",20);
 	  Student stu1=new Student("1002","tom",20);
 	  List<Student> list=new ArrayList<Student>();
 	  list.add(stu);
 	  list.add(stu1);
 	   ModelAndView mv=new ModelAndView(viewname);
 	   System.out.print(stu.getName());
 	   /*mv.addObject("time",new Date());*/
 /*	   mv.addObject("student",stu);
 	    return mv;*/
  /*  }*/
   /******测试get******/
 /*  @RequestMapping(value="/user/{id}",method=RequestMethod.GET)
   public String testGet(@PathVariable("id")Integer id){
	   System.out.println("GET操作"+id);
	   return "hello";
   }*/
   /******测试post******/
/*   @RequestMapping(value="/user/{id}",method=RequestMethod.POST)
   public String testPost(@PathVariable("id")Integer id){
	   System.out.println("POST操作"+id);
	   return "hello";
   }*/
   /******测试put******/
 /*  @RequestMapping(value="/user/{id}",method=RequestMethod.PUT)
   public String testPut(@PathVariable("id")Integer id){
	   System.out.println("PUT操作"+id);
	   return "hello";
   }*/
   /******测试delete******/
 /*  @RequestMapping(value="/user/{id}",method=RequestMethod.DELETE)
   public String testDelete(@PathVariable("id")Integer id){
	   System.out.println("Delete操作"+id);
	   return "hello";
   }*/
}
