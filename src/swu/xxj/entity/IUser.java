package swu.xxj.entity;

import java.util.List;

public interface IUser {
    public User selectUserByID(int id);
    public List<User> selectUser();
    public List<User> selectUsersByName(String userName);
    
    public void addUser(User user);
    
    public void updateUser(User user);
    
    public void deleteUser(int id);

	public User checkUserExist1(User user);

	public User checkUserExist2(User user);

}
