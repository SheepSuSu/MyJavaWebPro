package cake.wx.shopping.dbc ;
import java.sql.* ;

// ��Ҫ���ܾ����������ݿ⡢�ر����ݿ�
public class DataBaseConnection
{
	private final String DBDRIVER = "com.mysql.cj.jdbc.Driver" ;
	private final String DBURL = "jdbc:mysql://localhost:3306/mycakesshop?useUnicode=true&characterEncoding=gbk" ;
	private final String DBUSER = "MyCakesShop" ;
	private final String DBPASSWORD = "123456" ;
	private Connection conn = null ;

	public DataBaseConnection()
	{
		try
		{
			Class.forName(DBDRIVER) ;
			this.conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD) ;	
		}
		catch (Exception e)
		{
			System.out.println("MY���ݿ�����ʧ�ܣ�");
		}
	}

	// ȡ�����ݿ�����
	public Connection getConnection()
	{
//		try {
//			this.conn.setAutoCommit(false);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
		System.out.println("MY���ݿ����ӳɹ���");
		return this.conn;
	}

	// �ر����ݿ�����
	public void close()
	{
		try
		{
			this.conn.close() ;
		}
		catch (Exception e)
		{
		}		
	}
};