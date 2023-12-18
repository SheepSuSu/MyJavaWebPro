package cake.wx.shopping.busbean;

import cake.wx.shopping.factory.DAOFactory;
import cake.wx.shopping.vo.UserAccount;
import cake.wx.shopping.util.*;
public class UserBankOBean {
	//��ֵ
	//����bank��ʱ���Զ���useraccount�ϼ�������
	
	                                                     //username���û�����վ���û���     //���money���û�Ҫ���Ǯ������
	public static void addMoney(String cardname,String password,String username,double addmoney){
		try {
			String moneyLogId=GetIdTime.getLogid();
			String time=GetIdTime.getTime();
			//���Ǯ�ǳ�ֵǰ�����˻��ж���Ǯ
			double money1=DAOFactory.getBankDAOInstance().select(cardname).getMoney();
			double money2=money1-addmoney;
			DAOFactory.getBankDAOInstance().update(cardname, password, money2);
			//�õ��û��˻���ֵǮ��ӵ�е�Ǯ
			UserAccount useraccount=DAOFactory.getUserAccountDAOInstance().selectUserAccount(username);
			double usermoney1=useraccount.getMoney();
			//��ֵ���û�����Ǯ��
			double usermoney2=usermoney1+addmoney;
			DAOFactory.getUserAccountDAOInstance().updateUserAccount(username, usermoney2);
			//���ӳ�ֵ��¼
			DAOFactory.getMoneyLogDAOInstance().insert(moneyLogId, username, addmoney, time);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

}
