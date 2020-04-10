package swu.xxj.entity;

import java.util.List;

public interface ICommodity_image {
	public List<Commodity_image> selectCommodity_image();
	
	public List<Commodity_image> selectCommodity_imageByCommodity_id(int commodity_id);
	
    public Commodity_image selectCommodity_imageByID(int id);
    
    public void addCommodity_image(Commodity_image commodity_image);
    
    public void updateCommodity_image(Commodity_image commodity_image);
    
    public void deleteCommodity_image(int id);

}
