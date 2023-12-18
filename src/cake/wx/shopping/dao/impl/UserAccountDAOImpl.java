package cake.wx.shopping.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cake.wx.shopping.dao.UserAccountDAO;
import cake.wx.shopping.dbc.DataBaseConnection;
import cake.wx.shopping.vo.UserAccount;


public class UserAccountDAOImpl implements UserAccountDAO {

	public void deleteUserAccount(String username) throws Exception {

		String sql = "DELETE FROM useraccount WHERE username=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;

		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, username);
			// �������ݿ���²���
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			throw new Exception("���������쳣");
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}
	}

	public void newUserAccount(String username) throws Exception {
		String sql="INSERT INTO useraccount (username,money) VALUES (?,?) ";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, username);
			
			pstmt.setDouble(2, 0.000);
			
			// �������ݿ���²���
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			throw new Exception("���������쳣");
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}


	}

	public UserAccount selectUserAccount(String username) throws Exception {
		UserAccount userAccount=null;
		String sql="SELECT * FROM useraccount WHERE username=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, username);
			
			// �������ݿ���²���
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()){
				userAccount=new UserAccount();
				userAccount.setUsername(rs.getString(1));				
				userAccount.setMoney(rs.getDouble(2));
			}
			pstmt.close();
		} catch (Exception e) {
			throw new Exception("���������쳣");
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}
		
		return userAccount;
	}
	
	public List<UserAccount> selectAllUserAccount() throws Exception{
		List<UserAccount> userAccountList=new ArrayList<UserAccount> ();
		String sql="SELECT * FROM useraccount ";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			
			// �������ݿ���²���
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				UserAccount userAccount=new UserAccount();
				userAccount=new UserAccount();
				userAccount.setUsername(rs.getString(1));				
				userAccount.setMoney(rs.getDouble(2));
				userAccountList.add(userAccount);
			}
			pstmt.close();
		} catch (Exception e) {
			throw new Exception("���������쳣");
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}
		
		return userAccountList;
		
	}

	public void updateUserAccount(String username, double money)
			throws Exception {
		String sql = "UPDATE useraccount SET money=? WHERE username=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setDouble(1, money);
			pstmt.setString(2,username);			
			// �������ݿ���²���
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			throw new Exception("���������쳣");
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}
	}

}
