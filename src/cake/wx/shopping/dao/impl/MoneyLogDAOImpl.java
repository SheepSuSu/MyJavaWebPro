package cake.wx.shopping.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import cake.wx.shopping.dao.MoneyLogDAO;
import cake.wx.shopping.dbc.DataBaseConnection;
import cake.wx.shopping.vo.MoneyLog;

public class MoneyLogDAOImpl implements MoneyLogDAO {

	public void insert(String logid, String username, double money,
			String time) throws Exception {
		String sql="INSERT INTO moneylog (logid,username,money,time) VALUES (?,?,?,?) ";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, logid);
			pstmt.setString(2, username);
			pstmt.setDouble(3, money);
			pstmt.setString(4, time);
			// �������ݿ���²���
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}
	
	}

	public List<MoneyLog> selectByName(String username) throws Exception {
		List<MoneyLog> logList=new ArrayList<MoneyLog>();
		String sql = "SELECT * FROM moneylog WHERE username=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;

		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			// ����ģ����ѯ����
			pstmt.setString(1, username);
			
			// �������ݿ��ѯ����
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��person����
				MoneyLog moneyLog=new MoneyLog();
				moneyLog.setLogid(rs.getString(1));
				moneyLog.setUsername(rs.getString(2));
				moneyLog.setMoney(rs.getDouble(3));
				moneyLog.setTime(rs.getString(4));

				// ����ѯ���������ݼ��뵽List����֮��
				logList.add(moneyLog);
			}
			rs.close();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}
		return logList;
	}
	
	public List<MoneyLog> selectAllLog() throws Exception {
		List<MoneyLog> logList=new ArrayList<MoneyLog>();
		String sql = "SELECT * FROM moneylog ";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;

		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			
			
			
			// �������ݿ��ѯ����
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				// ��ѯ�����ݣ�֮�󽫲�ѯ�������ݸ�ֵ��person����
				MoneyLog moneyLog=new MoneyLog();
				moneyLog.setLogid(rs.getString(1));
				moneyLog.setUsername(rs.getString(2));
				moneyLog.setMoney(rs.getDouble(3));
				moneyLog.setTime(rs.getString(4));

				// ����ѯ���������ݼ��뵽List����֮��
				logList.add(moneyLog);
			}
			rs.close();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}
		return logList;
	}

}
