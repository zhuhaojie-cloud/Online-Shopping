package swu.xxj.entity;

public class Coupon {
	private int id;
    private String type;
    private String name;
    private double amount;
    private int per_limit;
    private String start_time;
    private String end_time;
    private String use_type;
    private String note;
    private int publish_count;
    private int min_point;
    private int use_count;
    private int receive_count;
    private String enable_time;
    private int code;
    private int menber_level;
    
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
		public int getPer_limit() {
		return per_limit;
	}
	public void setPer_limit(int per_limit) {
		this.per_limit = per_limit;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getUse_type() {
		return use_type;
	}
	public void setUse_type(String use_type) {
		this.use_type = use_type;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getPublish_count() {
		return publish_count;
	}
	public void setPublish_count(int publish_count) {
		this.publish_count = publish_count;
	}
	public int getMin_point() {
		return min_point;
	}
	public void setMin_point(int min_point) {
		this.min_point = min_point;
	}
	public int getUse_count() {
		return use_count;
	}
	public void setUse_count(int use_count) {
		this.use_count = use_count;
	}
	public int getReceive_count() {
		return receive_count;
	}
	public void setReceive_count(int receive_count) {
		this.receive_count = receive_count;
	}
	public String getEnable_time() {
		return enable_time;
	}
	public void setEnable_time(String enable_time) {
		this.enable_time = enable_time;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getMenber_level() {
		return menber_level;
	}
	public void setMenber_level(int menber_level) {
		this.menber_level = menber_level;
	}
	
   
    
}
