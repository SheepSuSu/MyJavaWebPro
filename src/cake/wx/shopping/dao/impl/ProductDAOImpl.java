package cake.wx.shopping.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cake.wx.shopping.dao.ProductDAO;
import cake.wx.shopping.dbc.DataBaseConnection;
import cake.wx.shopping.vo.Product;

public class ProductDAOImpl implements ProductDAO {

	public void deleteById(String pid) throws Exception {
		String sql = "DELETE FROM product WHERE pid=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;

		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, pid);
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

	public void deleteByNmae(String pname) throws Exception {
		String sql = "DELETE FROM product WHERE pname=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;

		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, pname);
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

	public void insert(String pid, String pname, double price, int pcount,
			String imgpath) throws Exception {

		String sql="INSERT INTO product (pid,pname,price,pcount,imgpath) VALUES (?,?,?,?,?) ";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, pid);
			pstmt.setString(2, pname);
			pstmt.setDouble(3, price);
			pstmt.setInt(4, pcount);
			pstmt.setString(5, imgpath);
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

	public Product selectById(String pid) throws Exception {
		Product product=null;
		String sql="SELECT * FROM product WHERE pid=? ";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, pid);
			
			// �������ݿ���²���
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()){
				product=new Product();
				product.setPid(rs.getString(1));
				product.setPname(rs.getString(2));
				product.setPrice(rs.getDouble(3));
				product.setPcount(rs.getInt(4));
				product.setImgpath(rs.getString(5));
			}
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}
		
		return product;
	}

	public List<Product> selectByLike(String cond) throws Exception {
		List<Product> plist=new ArrayList<Product>();
		String sql="SELECT * FROM product WHERE pname LIKE ?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, "%" + cond + "%");
//System.out.println(pstmt);
			// �������ݿ���²���
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				Product product=new Product();
				product.setPid(rs.getString(1));
				product.setPname(rs.getString(2));
				product.setPrice(rs.getDouble(3));
				product.setPcount(rs.getInt(4));
				product.setImgpath(rs.getString(5));
				plist.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// �ر����ݿ�����
			pstmt.close();
			dbc.close();
		}
		return plist;
	}
	
	public List<Product> selectAll() throws Exception {
		List<Product> plist=new ArrayList<Product>();
		String sql="SELECT * FROM product ORDER BY pid desc ";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);


			// �������ݿ���²���
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				Product product=new Product();
				product.setPid(rs.getString(1));
				product.setPname(rs.getString(2));
				product.setPrice(rs.getDouble(3));
				product.setPcount(rs.getInt(4));
				product.setImgpath(rs.getString(5));
				plist.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// �ر����ݿ�����
			pstmt.close();
			dbc.close();
		}
		return plist;
	}

	public List<Product> selectByName(String pname) throws Exception {
		List<Product> plist=new ArrayList<Product>();
		String sql = "SELECT * FROM product WHERE pname=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, pname );
			
			// �������ݿ���²���
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				Product product=new Product();
				product.setPid(rs.getString(1));
				product.setPname(rs.getString(2));
				product.setPrice(rs.getDouble(3));
				product.setPcount(rs.getInt(4));
				product.setImgpath(rs.getString(5));
				plist.add(product);
			}
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// �ر����ݿ�����
			dbc.close();
		}
		
		return plist;
	}

	public void update(String pid, String pname, double price, int pcount,
			String imgpath) throws Exception {
		String sql = "UPDATE product SET pname=?,price=?,pcount=?,imgpath=? WHERE pid=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setString(1, pname);
			pstmt.setDouble(2, price);
			pstmt.setInt(3, pcount);
			pstmt.setString(4, imgpath);
			pstmt.setString(5, pid);
			
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
		
		public void update(String pid, String pname, double price, int pcount
				) throws Exception {
			String sql = "UPDATE product SET pname=?,price=?,pcount=? WHERE pid=?";
			PreparedStatement pstmt = null;
			DataBaseConnection dbc = null;
			
			// ������������ݿ�ľ������
			try {
				// �������ݿ�
				dbc = new DataBaseConnection();
				pstmt = dbc.getConnection().prepareStatement(sql);
				pstmt.setString(1, pname);
				pstmt.setDouble(2, price);
				pstmt.setInt(3, pcount);
				pstmt.setString(4, pid);
				
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

	

	public void updateByPname(String pid, int pcount) throws Exception {
		String sql = "UPDATE product SET pcount=? WHERE pid=?";
		PreparedStatement pstmt = null;
		DataBaseConnection dbc = null;
		
		// ������������ݿ�ľ������
		try {
			// �������ݿ�
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			pstmt.setInt(1, pcount);
			pstmt.setString(2, pid);
			
			
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

	

}
