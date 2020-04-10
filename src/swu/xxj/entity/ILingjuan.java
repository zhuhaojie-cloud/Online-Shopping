package swu.xxj.entity;

import java.util.List;

public interface ILingjuan {
    public Lingjuan selectLingjuan();
    
    public List<Lingjuan> selectLingjuanByUser_id(int user_id);
    
    public void addLingjuan(Lingjuan lingjuan);
    
    public void updateLingjuan(Lingjuan lingjuan);
    
    public void deleteLingjuan(int id);

	public int selectLingjuanCount(int user_id);



}
