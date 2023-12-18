package cake.wx.shopping.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cake.wx.shopping.dao.AdminDAO;
import cake.wx.shopping.dbc.DataBaseConnection;
import cake.wx.shopping.vo.Admin;



public class AdminDAOImpl implements AdminDAO {

	public void delete(Admin admin) throws Exception {
		String sql = "DELETE FROM admin WHERE username=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;

		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			Connection dbcon = dbc.getConnection();
			pstmt = dbcon.prepareStatement(sql);
			pstmt.setString(1, admin.getUsername());
			// �������ݿ���²���
			dbcon.setAutoCommit(false);
			try{
				pstmt.executeUpdate();		
				dbc.getConnection().commit();
			}catch(Exception e){
				dbcon.rollback();
				dbcon.setAutoCommit(true);
			}
			pstmt.close();
		} catch (Exception e) {
			throw new Exception("���������쳣");
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}

	}

	public void delete(String username) throws Exception {
		String sql = "DELETE FROM admin WHERE username=?";
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

	public void insert(Admin admin) throws Exception {

		String sql="INSERT INTO admin (username,password) VALUES (?,?) ";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, admin.getUsername());
			pstmt.setString(2, admin.getPassword());
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

	public Admin selectByName(String username) throws Exception {
		
		Admin admin = null;
		String sql = "SELECT * FROM user WHERE username=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, username);
			// �������ݿ��ѯ����
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��user����
				admin=new Admin();
				admin.setUsername(rs.getString(1));
				admin.setPassword(rs.getString(2));
			}
			rs.close();
			pstmt.close();
		} catch (Exception e) {
			throw new Exception("���������쳣");
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}
		return admin;
	}

	public List<Admin> selectByLike(String cond) throws Exception{
		List<Admin> adminlist = new ArrayList<Admin>();
		String sql = "SELECT * FROM admin WHERE username LIKE ? ";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		ResultSet rs=null;

		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			// ����ģ����ѯ����
			pstmt.setString(1, "%" + cond + "%");
			// �������ݿ��ѯ����
		
			 rs= pstmt.executeQuery();			
				while(rs.next()) {
					// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��user����
					Admin admin=new Admin();
					admin.setUsername(rs.getString(1));
					admin.setPassword(rs.getString(2));
					// ����ѯ���������ݼ��뵽List����֮��
					adminlist.add(admin);
				}			
		} catch (Exception e) {
			throw new Exception("���������쳣");
		} finally {
			// �ر����ݿ�����
			rs.close();
			pstmt.close();
			dbc.close();
		}
		return adminlist;
		
	}

	public void updatePassword(String username, String password)
			throws Exception {
		String sql = "UPDATE admin SET password=? WHERE username=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, password);
			pstmt.setString(2, username);
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



	public boolean selectByNamePassword(String username, String password)
			throws Exception {
		String sql = "SELECT * FROM admin WHERE username=? and password=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		boolean ret = false;
		ResultSet rs=null;
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			// ����ģ����ѯ����
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			// �������ݿ��ѯ����
			System.out.println(pstmt);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				ret = true;
			}
		} catch (Exception e) {
			throw new Exception("���������쳣");
		} finally {
			rs.close();
			pstmt.close();
			// �ر����ݿ�����
			dbc.close();
		}
		System.out.println(ret);
		return ret;
	}

	public void insert(String username, String password) throws Exception {
		String sql="INSERT INTO admin (username,password) VALUES (?,?) ";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
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
