package cake.wx.shopping.test;

import cake.wx.shopping.dao.impl.UserFormDAOImpl;


public class UserFormDAOImplTest {

	

	/**
	 * @param args
	 */
	public static void main(String[] args) {
	       UserFormDAOImpl userform = new	UserFormDAOImpl();
		// TODO Auto-generated method stub
	  
	try {
		userform.insert("1223","ccc","杯子",12.12,121,"2023年6月07日",123.23);
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
//	try {
//		UserForm user=userform.selectByFid("121");
//		System.out.print(user.getUsername());
//		System.out.print(user.getTime());
//	} catch (Exception e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	}
//	
//	try {
//		List<UserForm> userform1=userform.selectByName("dddd");
//		System.out.println(userform1.get(0).getUsername()+"\t"+userform1.get(0).getTime());
//		System.out.println(userform1.size());
//	} catch (Exception e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	}
	}
	    

}
