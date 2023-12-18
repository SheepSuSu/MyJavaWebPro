package cake.wx.shopping.test;

import cake.wx.shopping.busbean.*;

public class UserBankOBeanTest {
	
	public static void main(String[] args) {
		for(int i=1;i<50;i++){
			String username="ÓÃ»§"+i;
			
			UserBankOBean.addMoney("admin", "admin", username, 10000);
		}
		
	}

}
