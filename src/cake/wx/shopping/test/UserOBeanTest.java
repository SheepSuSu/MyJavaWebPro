package cake.wx.shopping.test;

import cake.wx.shopping.busbean.UserOBean;


public class UserOBeanTest {
	
	public static void main(String []args){
		for(int i=1;i<50;i++){
			String str="user"+i;
			String email= "whoami" +i+"@126.com";
			String tel="19916984326"+i;
			String address="广州"+i+"号";
			String sex="男";
			if(i%2==0){
				sex="女";
			}
			int age=i;
			
			String date= cake.wx.shopping.util.GetIdTime.getTime();
			UserOBean.newUserBean(str, "123", email, tel, address, sex, age, date);
		}
		
		//UserOBean.deleteUserBean("234");
	}
	

	
}
