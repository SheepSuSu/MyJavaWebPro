package cake.wx.shopping.test;

import cake.wx.shopping.busbean.*;

/**
 * 
 * @author ��־������
 *
 */
public class UserBankOBeanTest {
	
	public static void main(String[] args) {
		for(int i=1;i<50;i++){
			String username="�û�"+i;
			
			UserBankOBean.addMoney("admin", "admin", username, 10000);
		}
		
	}

}
