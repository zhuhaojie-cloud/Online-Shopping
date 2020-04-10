package swu.xxj.entity;

import java.util.List;

public interface IKefu_jilu {
	
    public List<Kefu_jilu> selectKefu_jiluByUser_id(int user_id);
    public List<Kefu_jilu> selectKefu_jilu();
    public void addKefu_jilu(Kefu_jilu kefu_jilu);

}
