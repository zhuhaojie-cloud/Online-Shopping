package swu.xxj.test;
import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import swu.xxj.entity.Commodity_image;
import swu.xxj.entity.Commodity_infor;
import swu.xxj.entity.Coupon;
import swu.xxj.entity.Duizhao;
import swu.xxj.entity.Gouwuche;
import swu.xxj.entity.ICommodity_image;
import swu.xxj.entity.ICommodity_infor;
import swu.xxj.entity.ICoupon;
import swu.xxj.entity.IDuizhao;
import swu.xxj.entity.IGouwuche;
import swu.xxj.entity.IKefu_jilu;
import swu.xxj.entity.ILingjuan;
import swu.xxj.entity.ILunbo;
import swu.xxj.entity.IMenber_mode;
import swu.xxj.entity.INotice_infor;
import swu.xxj.entity.IShoucang_shangpin;
import swu.xxj.entity.IShoufa;
import swu.xxj.entity.IUser;
import swu.xxj.entity.Kefu_jilu;
import swu.xxj.entity.Lingjuan;
import swu.xxj.entity.Lunbo;
import swu.xxj.entity.Menber_mode;
import swu.xxj.entity.Notice_infor;
import swu.xxj.entity.Shoucang_shangpin;
import swu.xxj.entity.Shoufa;
import swu.xxj.entity.User;

public class Test {

    private static SqlSessionFactory sqlSessionFactory;
    private static Reader reader;

    static {
        try {
            reader = Resources.getResourceAsReader("Configuration.xml");
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static SqlSessionFactory getSession() {
        return sqlSessionFactory;
    }
    public static List<Lunbo> getAllLunbo(){
   	 SqlSession session = sqlSessionFactory.openSession();
   	 List<Lunbo> lunbo=new ArrayList<Lunbo>();
        try {
       	 ILunbo userOperation = session.getMapper(ILunbo.class);
            lunbo = userOperation.selectLunbo();
            session.commit();
        } finally {
            session.close();
        }
        return lunbo;
   }
    public static List<Gouwuche> findAllgouwucheByUser_id(int user_id){
    	 SqlSession session = sqlSessionFactory.openSession();
    	 List<Gouwuche> gouwuche;
         try {
        	 IGouwuche userOperation = session.getMapper(IGouwuche.class);
             gouwuche = userOperation.selectGouwucheByUser_id(user_id);
             session.commit();
         } finally {
             session.close();
         }
         return gouwuche;
    }
    public static User checkUserExist(String userName, String userPassword) {
    	 User user1=new User();
    	 SqlSession session = sqlSessionFactory.openSession();
    	 try {
             IUser userOperation = session.getMapper(IUser.class);
             User user=new User();
             System.out.println(userName);
             user.setUserName(userName);
             user.setUserPassword(userPassword);
             user1= userOperation.checkUserExist1(user);
             session.commit();
         } finally {
             session.close();
         }
    	 return user1;
	}
    public static User getUserByID(int userID) {
    	User user =new User();
        SqlSession session = sqlSessionFactory.openSession();
        try {
            IUser userOperation = session.getMapper(IUser.class);
          user = userOperation.selectUserByID(userID);
            session.commit();
        } finally {
            session.close();
        }
        return user;
    }

    public void getUserList(String userName) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            IUser userOperation = session.getMapper(IUser.class);
            List<User> users = userOperation.selectUsersByName(userName);
            for (User user : users) {
                System.out.println(user.getId() + ":" + user.getUserName()
                        + ":" + user.getUserAddress());
            }

        } finally {
            session.close();
        }
    }

    /**
     * 增加后要commit
     */
    public void addUser(User user) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            IUser userOperation = session.getMapper(IUser.class);
            userOperation.addUser(user);
            session.commit();
        } finally {
            session.close();
        }
    }

    /**
     * 修改后要commit
     */
    public static void updateUser1(User user) {
    	 SqlSession session = sqlSessionFactory.openSession();
	        try {
	            IUser userOperation = session.getMapper(IUser.class);
	            userOperation.updateUser(user);
	            session.commit();
	        } finally {
	            session.close();
	        }
    }

    /**
     * 删除后要commit.
     * 
     * @param id
     */
    public void deleteUser(int id) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            IUser userOperation = session.getMapper(IUser.class);
            userOperation.deleteUser(id);
            session.commit();
        } finally {
            session.close();
        }
    }
	public static void deleteGouwucheByid(int id) {
		// TODO Auto-generated method stub
		  SqlSession session = sqlSessionFactory.openSession();
	        try {
	        	IGouwuche userOperation = session.getMapper(IGouwuche.class);
	            userOperation.deleteGouwuche(id);
	            session.commit();
	        } finally {
	            session.close();
	        }
	}
	public static Commodity_infor findCommodity_inforByCommodity_id(int commodity_id) {
		// TODO Auto-generated method stub
		Commodity_infor commodity_infor=new Commodity_infor();
		 SqlSession session = sqlSessionFactory.openSession();
	        try {
	        	ICommodity_infor userOperation = session.getMapper(ICommodity_infor.class);
	        	commodity_infor=userOperation.selectCommodity_inforByID(commodity_id);
	            session.commit();
	        } finally {
	            session.close();
	        }
	        return commodity_infor;
	}
	public static List<Commodity_image> getAllCommodity_imageByCommodity_id(int commodity_id) {
		// TODO Auto-generated method stub
		 SqlSession session = sqlSessionFactory.openSession();
    	 List<Commodity_image> commodity_image;
         try {
        	 ICommodity_image userOperation = session.getMapper(ICommodity_image.class);
        	 commodity_image = userOperation.selectCommodity_imageByCommodity_id(commodity_id);
        	 session.commit();
         } finally {
             session.close();
         }
         return commodity_image;
	}
	public static void addGouwuche(int commodity_id, String commodity_name, int user_id, double price, int count,
			String commodity_image, String lei, String time) {
		// TODO Auto-generated method stub
		Gouwuche gouwuche=new Gouwuche();
		gouwuche.setCommodity_id(commodity_id);
		gouwuche.setCommodity_image(commodity_image);
		gouwuche.setCommodity_name(commodity_name);
		gouwuche.setLei(lei);
		gouwuche.setNumber(count);
		gouwuche.setPrice(price);
		gouwuche.setTime(time);
		gouwuche.setUser_id(user_id);
		 SqlSession session = sqlSessionFactory.openSession();
	        try {
	            IGouwuche userOperation = session.getMapper(IGouwuche.class);
	            userOperation.addGouwuche(gouwuche);
	            session.commit();
	        } finally {
	            session.close();
	        }
	}
	public static List<Notice_infor> getAllNotice_infor() {
		// TODO Auto-generated method stub
		 SqlSession session = sqlSessionFactory.openSession();
	   	 List<Notice_infor> notice_infor=new ArrayList<Notice_infor>();
	        try {
	       	 INotice_infor userOperation = session.getMapper(INotice_infor.class);
	       	notice_infor = userOperation.selectNotice_infor();
	        session.commit();
	        } finally {
	            session.close();
	        }
	        return notice_infor;
	}
	public static List<Shoufa> getAllShoufa() {
		// TODO Auto-generated method stub
	SqlSession session = sqlSessionFactory.openSession();
		 List<Shoufa> shoufa=new ArrayList<Shoufa>();
			    try {
			   	 IShoufa userOperation = session.getMapper(IShoufa.class);
			   	shoufa = userOperation.selectShoufa();
			    session.commit();
			    } finally {
		       session.close();
		    }
	   return shoufa;
	}
	public static List<Commodity_infor> findAllCommodity_infor() {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
		 List<Commodity_infor> commodity_infor=new ArrayList<Commodity_infor>();
			    try {
			   	 ICommodity_infor userOperation = session.getMapper(ICommodity_infor.class);
			   	 commodity_infor = userOperation.selectCommodity_infor();
			   	 session.commit();
			    } finally {
		       session.close();
		    }
	   return commodity_infor;
	}
	public static int getItemCount() {
		// TODO Auto-generated method stub
		 int count;
    	 SqlSession session = sqlSessionFactory.openSession();
    	 try {
             ICommodity_infor userOperation = session.getMapper(ICommodity_infor.class);
             count=userOperation.selectCommodityCount();
             session.commit();
         } finally {
             session.close();
         }
    	 return count;
	}
	public static List<Commodity_infor> getAllCommodity_infor(int start, int end) {
		// TODO Auto-generated method stub
		System.out.println(start+"--"+end);
		Map<String, Object> parameterMap= new HashMap<String,Object>();
		parameterMap.put("start",start);
		parameterMap.put("end",end);
		SqlSession session = sqlSessionFactory.openSession();
		 List<Commodity_infor> commodity_infor=new ArrayList<Commodity_infor>();
			    try {
			   	 ICommodity_infor userOperation = session.getMapper(ICommodity_infor.class);
			   	System.out.println(parameterMap);
			   	 commodity_infor = userOperation.selectAllCommodity_infor(parameterMap);
			   	 session.commit();
			    } finally {
		       session.close();
		    }
	   return commodity_infor;
		/*select * from jianzhi order by zan desc limit ?,?*/
	}
	public static List<Coupon> getAllCoupon() {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
		 List<Coupon> coupon=new ArrayList<Coupon>();
			    try {
			   	 ICoupon userOperation = session.getMapper(ICoupon.class);
			   	coupon = userOperation.selectCoupon();
			    session.commit();
			    } finally {
		       session.close();
		    }
	   return coupon;
	}
	public static Coupon getCouponById(int id) {
		// TODO Auto-generated method stub
		 Coupon coupon=new Coupon();
		 SqlSession session = sqlSessionFactory.openSession();
	        try {
	            ICoupon userOperation = session.getMapper(ICoupon.class);
	            coupon = userOperation.selectCouponByID(id);
	            session.commit();
	        } finally {
	            session.close();
	        }
	        return coupon;
	}
	public static void updateCoupon1(Coupon coupon) {
		// TODO Auto-generated method stub
		 SqlSession session = sqlSessionFactory.openSession();
	        try {
	            ICoupon userOperation = session.getMapper(ICoupon.class);
	            userOperation.updateCoupon(coupon);
	            session.commit();
	        } finally {
	            session.close();
	        }
	}
	public static void addLingjuan1(Lingjuan lingjuan) {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
        try {
            ILingjuan userOperation = session.getMapper(ILingjuan.class);
            userOperation.addLingjuan(lingjuan);
            session.commit();
        } finally {
            session.close();
        }
	}
	 public static List<Lingjuan> getLingjuanByUser_id(int user_id) {
		 List<Lingjuan> lingjuan=new ArrayList<Lingjuan>();
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	            ILingjuan userOperation = session.getMapper(ILingjuan.class);
	            lingjuan = userOperation.selectLingjuanByUser_id(user_id);
	            
	            session.commit();
	        } finally {
	            session.close();
	        }
	        return lingjuan;
	    }
	public static void addDuizhao1(Duizhao duizhao) {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
        try {
            IDuizhao userOperation = session.getMapper(IDuizhao.class);
            userOperation.addDuizhao(duizhao);
            session.commit();
        } finally {
            session.close();
        }
	}
	public static int getJuan_countByUser_id(int user_id) {
		// TODO Auto-generated method stub
		int count;
   	 SqlSession session = sqlSessionFactory.openSession();
   	 try {
            ILingjuan userOperation = session.getMapper(ILingjuan.class);
            count=userOperation.selectLingjuanCount(user_id);
            session.commit();
        } finally {
            session.close();
        }
   	 return count;
	}
	public static Menber_mode getMenber_modeById(int id) {
		// TODO Auto-generated method stub
		Menber_mode menber_mode=new Menber_mode();
		 SqlSession session = sqlSessionFactory.openSession();
	        try {
	            IMenber_mode userOperation = session.getMapper(IMenber_mode.class);
	            menber_mode = userOperation.selectMenber_modeByID(id);
	            session.commit();
	        } finally {
	            session.close();
	        }
	        return menber_mode;
	}
	public static List<Menber_mode> getAllMenber_mode() {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
		 List<Menber_mode> menber_mode=new ArrayList<Menber_mode>();
			    try {
			   	 IMenber_mode userOperation = session.getMapper(IMenber_mode.class);
			   	menber_mode = userOperation.selectMenber_mode();
			    session.commit();
			    } finally {
		       session.close();
		    }
	   return menber_mode;
	}
	public static void addShoucang_shangpin1(Shoucang_shangpin shoucang_shangpin) {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
        try {
            IShoucang_shangpin userOperation = session.getMapper(IShoucang_shangpin.class);
            userOperation.addShoucang_shangpin(shoucang_shangpin);
            session.commit();
        } finally {
            session.close();
        }
	}
	public static List<Shoucang_shangpin> findshoucang_shangpinByUser_id(int user_id) {
		// TODO Auto-generated method stub
		 List<Shoucang_shangpin> shoucang_shangpin=new ArrayList<Shoucang_shangpin>();
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	            IShoucang_shangpin userOperation = session.getMapper(IShoucang_shangpin.class);
	            shoucang_shangpin = userOperation.selectShoucang_shangpinByUser_id(user_id);
	            
	            session.commit();
	        } finally {
	            session.close();
	        }
	        return shoucang_shangpin;
	}
	public static void deleteShoucang_shangpinByid(int id) {
		// TODO Auto-generated method stub
		  SqlSession session = sqlSessionFactory.openSession();
	        try {
	        	IShoucang_shangpin userOperation = session.getMapper(IShoucang_shangpin.class);
	            userOperation.deleteShoucang_shangpin(id);
	            session.commit();
	        } finally {
	            session.close();
	        }
	}
	public static List<Commodity_infor> getCommodity_inforBySearch(String content) {
		// TODO Auto-generated method stub
		 List<Commodity_infor> commodity_infor=new ArrayList<Commodity_infor>();
		SqlSession session = sqlSessionFactory.openSession();
        try {
        	ICommodity_infor userOperation = session.getMapper(ICommodity_infor.class);
        	commodity_infor=userOperation.getCommodity_infor(content);
            session.commit();
        } finally {
            session.close();
        }
        return commodity_infor;
	}
	public static void addKefu_jilu(Kefu_jilu kefu_jilu) {
		// TODO Auto-generated method stub
		SqlSession session = sqlSessionFactory.openSession();
        try {
            IKefu_jilu userOperation = session.getMapper(IKefu_jilu.class);
            userOperation.addKefu_jilu(kefu_jilu);
            session.commit();
        } finally {
            session.close();
        }
	}
	public static List<Kefu_jilu> getKefu_jiluByUser_id(int user_id) {
		// TODO Auto-generated method stub
		 List<Kefu_jilu> kefu_jilu=new ArrayList<Kefu_jilu>();
			SqlSession session = sqlSessionFactory.openSession();
	        try {
	        	IKefu_jilu userOperation = session.getMapper(IKefu_jilu.class);
	        	kefu_jilu=userOperation.selectKefu_jiluByUser_id(user_id);
	            session.commit();
	        } finally {
	            session.close();
	        }
	        return kefu_jilu;
	}
	public static List<Kefu_jilu> getKefu_jilu() {
		// 逆序
		 List<Kefu_jilu> kefu_jilu=new ArrayList<Kefu_jilu>();
			SqlSession session = sqlSessionFactory.openSession();
	        try {
	        	IKefu_jilu userOperation = session.getMapper(IKefu_jilu.class);
	        	kefu_jilu=userOperation.selectKefu_jilu();
	            session.commit();
	        } finally {
	            session.close();
	        }
	        return kefu_jilu;
	}
	public static User find(User user) {
		// TODO Auto-generated method stub
		 User user1=new User();
    	 SqlSession session = sqlSessionFactory.openSession();
    	 try {
             IUser userOperation = session.getMapper(IUser.class);
             user1= userOperation.checkUserExist2(user);
             session.commit();
         } finally {
             session.close();
         }
    	 return user1;
	}
	public static void updateUser(String password, String name) {
		// TODO Auto-generated method stub
    	 SqlSession session = sqlSessionFactory.openSession();
    	 try {
             IUser userOperation = session.getMapper(IUser.class);
             User user=new User();
             
             user.setUserName(name);
             user.setUserPassword(password);
             userOperation.updateUser(user);
             session.commit();
         } finally {
             session.close();
         }
	}
	public static List<User> getAllUsers() {
		// TODO Auto-generated method stub
		 List<User> user=new ArrayList<User>();
			SqlSession session = sqlSessionFactory.openSession();
	        try {
	        	IUser userOperation = session.getMapper(IUser.class);
	        	user=userOperation.selectUser();
	            session.commit();
	        } finally {
	            session.close();
	        }
	        return user;
	}
}
