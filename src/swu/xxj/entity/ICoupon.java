package swu.xxj.entity;

import java.util.List;

public interface ICoupon {
	public List<Coupon> selectCoupon();
	
    public Coupon selectCouponByID(int id);
    
    public void addCoupon(Coupon coupon);
    
    public void updateCoupon(Coupon coupon);
    
    public void deleteCoupon(int id);

}
