package swu.xxj.entity;

import java.util.List;

public interface ILunbo {
	public List<Lunbo> selectLunbo();
	
    public Lunbo selectLunboByID(int id);
    
    public void addLunbo(Lunbo lunbo);
    
    public void updateLunbo(Lunbo lunbo);
    
    public void deleteLunbo(int id);

}
