package cake.wx.shopping.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cake.wx.shopping.dao.UserFormDAO;
import cake.wx.shopping.dbc.DataBaseConnection;
import cake.wx.shopping.vo.Product;
import cake.wx.shopping.vo.UserForm;

public class UserFormDAOImpl implements UserFormDAO {

	public void insert(String fid, String username, String pname, double proprice,int count,
			String time,double summoney) throws Exception {
		String sql="INSERT INTO userform (fid,username,pname,proprice,count,time,summoney) VALUES (?,?,?,?,?,?,?) ";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, fid);
			pstmt.setString(2, username);
			pstmt.setString(3, pname);
			pstmt.setDouble(4, proprice);
			pstmt.setInt(5, count);
			pstmt.setString(6, time);
			pstmt.setDouble(7, summoney);
			// �������ݿ���²���
System.out.println(pstmt);			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// �ر����ݿ�����
			pstmt.close();
			dbc.close();
		}

	}

	public UserForm selectByFid(String fid) throws Exception {
		
		UserForm userForm = null;
		String sql = "SELECT * FROM userform WHERE fid=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, fid);
			// �������ݿ��ѯ����
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��user����
				userForm=new UserForm();
				userForm.setFid(rs.getString(2));
				userForm.setUsername(rs.getString(3));
				userForm.setPname(rs.getString(4));
				userForm.setProprice(rs.getDouble(5));
				userForm.setCount(rs.getInt(6));
				userForm.setTime(rs.getString(7));
				userForm.setSummoney(rs.getDouble(8));
			}
			rs.close();
			pstmt.close();
		} catch (Exception e) {
			throw new Exception("���������쳣");
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}
		return userForm;
	}

	public List<UserForm> selectByName(String username) throws Exception {
		
		
		List<UserForm> formList=new ArrayList<UserForm>();
		String sql = "SELECT * FROM userform WHERE username=?";
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
			while(rs.next()) {
				// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��user����
				UserForm userForm = null;
				userForm=new UserForm();
				userForm.setFid(rs.getString(2));
				userForm.setUsername(rs.getString(3));
				userForm.setPname(rs.getString(4));
				userForm.setProprice(rs.getDouble(5));
				userForm.setCount(rs.getInt(6));
				userForm.setTime(rs.getString(7));
				userForm.setSummoney(rs.getDouble(8));
				formList.add(userForm);
			}
			rs.close();
			pstmt.close();
		} catch (Exception e) {
			throw new Exception("���������쳣");
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}
		return formList;
	}
	
public List<UserForm> selectAllForm() throws Exception {

	List<UserForm> formList=new ArrayList<UserForm>();
		String sql = "SELECT * FROM userform ";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			// �������ݿ��ѯ����
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��user����
				UserForm userForm=new UserForm();
				userForm.setFid(rs.getString(2));
				userForm.setUsername(rs.getString(3));
				userForm.setPname(rs.getString(4));
				userForm.setProprice(rs.getDouble(5));
				userForm.setCount(rs.getInt(6));
				userForm.setTime(rs.getString(7));
				userForm.setSummoney(rs.getDouble(8));
				formList.add(userForm);
			}
			rs.close();
			pstmt.close();
		} catch (Exception e) {
			throw new Exception("���������쳣");
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}
		return formList;
	}

	public void insert(Product product) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
