package cake.wx.shopping.test;

import cake.wx.shopping.factory.DAOFactory;
import cake.wx.shopping.vo.UserAccount;

public  class UserAccountDAOImplTest {
	public static void newUserAccountTest(String name) {
		try {
			DAOFactory.getUserAccountDAOInstance().newUserAccount(name);
			System.out.println("�����ɹ���");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void deleteUserAccountTest(String name) {
		try {
			DAOFactory.getUserAccountDAOInstance().deleteUserAccount(name);
			System.out.println("ɾ���ɹ���");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void updateUserAccountTest(String name, double money) {
		try {
			DAOFactory.getUserAccountDAOInstance().updateUserAccount(name,
					money);
			System.out.println("���³ɹ���");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	 public static UserAccount selectUserAccountTest(String username) {
	 try {
	 UserAccount
	 userAccount=(UserAccount)DAOFactory.getUserAccountDAOInstance().selectUserAccount(username);
	 System.out.println("ѡ��ɹ���");
	 return userAccount;
	 } catch (Exception e) {
		 e.printStackTrace();
	 }
	return null;
	 }
	public static void main(String[] args) {
		//newUserAccountTest("�Ҽ�");
       // deleteUserAccountTest("�Ҽ�");
		System.out.println(selectUserAccountTest("������1").getUsername()+selectUserAccountTest("������1").getMoney());
//        updateUserAccountTest("����", 0.01);
	}
}