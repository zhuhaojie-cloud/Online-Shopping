package swu.xxj.entity;

import java.util.List;

public interface IShoucang_shangpin {
	public List<Shoucang_shangpin> selectShoucang_shangpin();
	
    public List<Shoucang_shangpin> selectShoucang_shangpinByUser_id(int user_id);
    
    public void addShoucang_shangpin(Shoucang_shangpin shoucang_shangpin);
    
    public void updateShoucang_shangpin(Shoucang_shangpin shoucang_shangpin);
    
    public void deleteShoucang_shangpin(int id);
}
