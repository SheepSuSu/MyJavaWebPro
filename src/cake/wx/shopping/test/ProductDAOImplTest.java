package cake.wx.shopping.test;

import cake.wx.shopping.factory.DAOFactory;


public class ProductDAOImplTest {
	
	public static void main(String[] args) {

		try {
			//DAOFactory.getProductDAOInstance().insert("349", "��־��2", 12.11, 23, "c:/");
			//DAOFactory.getProductDAOInstance().deleteByNmae("��־��");
			//DAOFactory.getProductDAOInstance().deleteById("123");
			//DAOFactory.getProductDAOInstance().selectById("346");
//			System.out.println(((Product)DAOFactory.getProductDAOInstance().selectByLike("346").get(0)).getPname());
			System.out.println(DAOFactory.getProductDAOInstance().selectByLike("��").size());
			//DAOFactory.getProductDAOInstance().selectByName("��");
			//DAOFactory.getProductDAOInstance().update("346", "���", 19.51, 12,"c:/");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
