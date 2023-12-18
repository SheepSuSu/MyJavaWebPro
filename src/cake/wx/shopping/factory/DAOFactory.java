package cake.wx.shopping.factory ;

import cake.wx.shopping.dao.AdminDAO;
import cake.wx.shopping.dao.BankDAO;
import cake.wx.shopping.dao.MoneyLogDAO;
import cake.wx.shopping.dao.ProductDAO;
import cake.wx.shopping.dao.UserAccountDAO;
import cake.wx.shopping.dao.UserDAO;
import cake.wx.shopping.dao.UserFormDAO;
import cake.wx.shopping.dao.impl.AdminDAOImpl;
import cake.wx.shopping.dao.impl.BankDAOImpl;
import cake.wx.shopping.dao.impl.MoneyLogDAOImpl;
import cake.wx.shopping.dao.impl.ProductDAOImpl;
import cake.wx.shopping.dao.impl.UserAccountDAOImpl;
import cake.wx.shopping.dao.impl.UserDAOImpl;
import cake.wx.shopping.dao.impl.UserFormDAOImpl;




public class DAOFactory
{	
	public static UserDAO getUserDAOInstance(){
		return new UserDAOImpl();
	}
	
	public static AdminDAO getAdminDAOInstance(){
		return new AdminDAOImpl();
	}
	
	public static ProductDAO getProductDAOInstance(){
		return new ProductDAOImpl();
	}
	
	public static BankDAO getBankDAOInstance(){
		return new BankDAOImpl();
	}
	
	public static UserAccountDAO getUserAccountDAOInstance(){
		return new UserAccountDAOImpl();
	}
	
	public static UserFormDAO getUserFormDAOInstance(){
		return new UserFormDAOImpl();
	}
	
	public static MoneyLogDAO getMoneyLogDAOInstance(){
		return new MoneyLogDAOImpl();
	}
		
}
