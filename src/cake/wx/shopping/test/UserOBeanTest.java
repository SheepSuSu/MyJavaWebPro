package cake.wx.shopping.test;

import cake.wx.shopping.busbean.UserOBean;

/**
 * 
 * @author ��־������
 *
 */

public class UserOBeanTest {
	
	public static void main(String []args){
		for(int i=1;i<50;i++){
			String str="�û�"+i;
			String email= "cake" +i+"@126.com";
			String tel="139516526"+i;
			String address="����̫�����"+i+"��";
			String sex="��";
			if(i%2==0){
				sex="Ů";
			}
			int age=i;
			
			String date= cake.wx.shopping.util.GetIdTime.getTime();
			UserOBean.newUserBean(str, "123", email, tel, address, sex, age, date);
		}
		
		//UserOBean.deleteUserBean("234");
	}
	

	
}
