package swu.xxj.entity;

import java.util.List;

public interface IShoufa {
	public List<Shoufa> selectShoufa();
	
    public Shoufa selectShoufaByID(int commodity_id);
    
    public void addShoufa(Shoufa shoufa);
    
    public void updateShoufa(Shoufa shoufa);
    
    public void deleteShoufa(int commodity_id);

}
