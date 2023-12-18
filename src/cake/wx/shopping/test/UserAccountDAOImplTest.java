package cake.wx.shopping.test;

import cake.wx.shopping.factory.DAOFactory;
import cake.wx.shopping.vo.UserAccount;

public  class UserAccountDAOImplTest {
	public static void newUserAccountTest(String name) {
		try {
			DAOFactory.getUserAccountDAOInstance().newUserAccount(name);
			System.out.println("创建成功！");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void deleteUserAccountTest(String name) {
		try {
			DAOFactory.getUserAccountDAOInstance().deleteUserAccount(name);
			System.out.println("删除成功！");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void updateUserAccountTest(String name, double money) {
		try {
			DAOFactory.getUserAccountDAOInstance().updateUserAccount(name,
					money);
			System.out.println("更新成功！");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	 public static UserAccount selectUserAccountTest(String username) {
	 try {
	 UserAccount
	 userAccount=(UserAccount)DAOFactory.getUserAccountDAOInstance().selectUserAccount(username);
	 System.out.println("选择成功！");
	 return userAccount;
	 } catch (Exception e) {
		 e.printStackTrace();
	 }
	return null;
	 }
	public static void main(String[] args) {
		//newUserAccountTest("aaa");
       // deleteUserAccountTest("aaa");
		System.out.println(selectUserAccountTest("ccc").getUsername()+selectUserAccountTest("ccc").getMoney());
//        updateUserAccountTest("bbb", 0.01);
	}
}
