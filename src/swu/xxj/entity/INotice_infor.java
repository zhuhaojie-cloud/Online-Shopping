package swu.xxj.entity;

import java.util.List;

public interface INotice_infor {
    
    public List<Notice_infor> selectNotice_infor();
    
    public Notice_infor selectNotice_inforById(int notice_id);
    
    public void addNotice_infor(Notice_infor notice_infor);
    
    public void updateNotice_infor(Notice_infor notice_infor);
    
    public void deleteNotice_infor(int notice_id);


}
