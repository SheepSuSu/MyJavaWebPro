package cake.wx.shopping.test;

import cake.wx.shopping.factory.DAOFactory;

public class AdminDAOImplTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
//			
//			DAOFactory.getAdminDAOInstance().insert("�Ҽ�", "123");
//			DAOFactory.getAdminDAOInstance().insert("����", "E04");
//			DAOFactory.getAdminDAOInstance().updatePassword("�Ҽ�", "E03");
//			DAOFactory.getAdminDAOInstance().selectByName("�Ҽ�");
//			DAOFactory.getAdminDAOInstance().selectByNamePassword("����", "E04");
//			DAOFactory.getAdminDAOInstance().insert("������","E03");
//			List<Admin> adminList=DAOFactory.getAdminDAOInstDAOFactory.getAdminDAOInstance()ance().selectByLike("li");
//			for(int i=0;i<adminList.size();i++){
//				System.out.println(adminList.get(i).getUsername());
//			}
			DAOFactory.getAdminDAOInstance().delete("������");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
