package swu.xxj.entity;

import java.util.List;
import java.util.Map;

public interface ICommodity_infor {
	public List<Commodity_infor> selectCommodity_infor();
	
    public Commodity_infor selectCommodity_inforByID(int id);
    
    public void addCommodity_infor(Commodity_infor commodity_infor);
    
    public void updateCommodity_infor(Commodity_infor commodity_infor);
    
    public void deleteCommodity_infor(int id);
    
    public int selectCommodityCount();
    
    public List<Commodity_infor> selectAllCommodity_infor(Map<String, Object> parameterMap);

	public List<Commodity_infor> getCommodity_infor(String content);
}
