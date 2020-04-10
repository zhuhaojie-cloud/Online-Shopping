package swu.xxj.entity;

import java.util.List;

public interface IGouwuche {
    public Gouwuche selectGouwucheByID(int id);
    
    public List<Gouwuche> selectGouwucheByUser_id(int user_id);
    
    public void addGouwuche(Gouwuche gouwuche);
    
    public void updateGouwuche(Gouwuche gouwuche);
    
    public void deleteGouwuche(int id);



}
