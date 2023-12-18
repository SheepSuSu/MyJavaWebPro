package cake.wx.shopping.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cake.wx.shopping.dao.BankDAO;
import cake.wx.shopping.dbc.DataBaseConnection;
import cake.wx.shopping.vo.Bank;

public class BankDAOImpl  implements BankDAO{

	public boolean select(String cardname,String password) throws Exception {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM bank WHERE cardname=? and password=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, cardname);
			pstmt.setString(2,password);
			// �������ݿ���²���
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				pstmt.close();
				rs.close();
				return true;
			}else{
				pstmt.close();
				rs.close();
				return false;
			}
		} catch (Exception e) {
				e.printStackTrace();
				return false;
		} finally {
			// �ر����ݿ�����
			pstmt.close();
			dbc.close();
		}
	}

	public boolean update(String cardname,String password,double money) throws Exception {
		// TODO Auto-generated method stub
		String sql = "UPDATE bank SET money=? WHERE cardname=? and password=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setDouble(1, money);
			pstmt.setString(2, cardname);
			pstmt.setString(3, password);
			// �������ݿ���²���
			pstmt.executeUpdate();
System.out.println(pstmt);			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			// �ر����ݿ�����
			pstmt.close();
			dbc.close();
		}
	}

	public Bank select(String cardname) throws Exception {
		String sql = "SELECT * FROM bank WHERE cardname=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		Bank bank = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, cardname);
			// �������ݿ���²���
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				bank = new Bank();
				bank.setUsername(rs.getString("cardname"));
				bank.setPassword(rs.getString("password"));
				double money = rs.getDouble("money");
				bank.setMoney(money);
				rs.close();
				return bank;
			}else{
				rs.close();
				pstmt.close();
				return null;
			}
		} catch (Exception e) {
				e.printStackTrace();
		} finally {
			// �ر����ݿ�����
			pstmt.close();
			dbc.close();
		}
		return bank;
	}

//	public Bank select(String cardname, String password, double money)
//			throws Exception {
//		String sql = "SELECT * FROM bank WHERE cardname=?";
//		PreparedStatement pstmt = null;
//		DataBaseConnection dbc = null;
//		Bank bank = null;
//		
//		// ������������ݿ�ľ������
//		try {
//			// �������ݿ�
//			dbc = new DataBaseConnection();
//			pstmt = dbc.getConnection().prepareStatement(sql);
//			pstmt.setString(1, cardname);
//			// �������ݿ���²���
//			ResultSet rs = pstmt.executeQuery();
//			if(rs.next()){
//				bank = new Bank();
//				bank.setUsername(cardname);
//				bank.setPassword(password);
//				bank.setMoney(money);
//				rs.close();
//				return bank;
//			}else{
//				rs.close();
//				pstmt.close();
//			}
//		} catch (Exception e) {
//				e.printStackTrace();
//		} finally {
//			// �ر����ݿ�����
//			
//			pstmt.close();
//			dbc.close();
//		}
//		return bank;
//	}

	public void insert(Bank bank) throws Exception {
		String sql="INSERT INTO bank (cardname,password,money) VALUES (?,?,?) ";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, bank.getUsername());
			pstmt.setString(2, bank.getPassword());
			pstmt.setDouble(3, bank.getMoney());
			// �������ݿ���²���
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// �ر����ݿ�����
			pstmt.close();
			dbc.close();
		}
	}
	
}
