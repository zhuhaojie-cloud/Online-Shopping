package swu.xxj.entity;

public class Gouwuche {
	private int id;
	private int commodity_id;
    private String commodity_name;
    private int user_id;
    private double price;
    private int number;
    private String commodity_image;
    private String lei;
    private String time;
    
	public String getLei() {
		return lei;
	}
	public void setLei(String lei) {
		this.lei = lei;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getCommodity_image() {
		return commodity_image;
	}
	public void setCommodity_image(String commodity_image) {
		this.commodity_image = commodity_image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCommodity_id() {
		return commodity_id;
	}
	public void setCommodity_id(int commodity_id) {
		this.commodity_id = commodity_id;
	}
	public String getCommodity_name() {
		return commodity_name;
	}
	public void setCommodity_name(String commodity_name) {
		this.commodity_name = commodity_name;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}

	
    
}
