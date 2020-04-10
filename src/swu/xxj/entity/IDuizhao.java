package swu.xxj.entity;

import java.util.List;

public interface IDuizhao {
	public List<Duizhao> selectDuizhao();
	
    public Duizhao selectDuizhaoByUser_id(int usr_id);
    
    public void addDuizhao(Duizhao duizhao);
    
    public void updateDuizhao(Duizhao duizhao);
    
    public void deleteDuizhao(int user_id);

}
