package cake.wx.shopping.test;

import java.util.ArrayList;
import java.util.List;

import cake.wx.shopping.vo.Product;
import cake.wx.shopping.busbean.*;


public class UserFormOBeanTest {
	

	public static void main(String[] args) {
		List<Product> list=new ArrayList<Product>();
		Product p1=new Product();
		p1.setPid("1");
		p1.setPname("cake1");
		p1.setPcount(5);
		p1.setPrice(10);
		Product p2=new Product();
		p2.setPid("2");
		p2.setPname("cake2");
		p2.setPcount(5);
		p2.setPrice(20);
		Product p3=new Product();
		p3.setPid("3");
		p3.setPname("cake3");
		p3.setPcount(5);
		p3.setPrice(30);
		list.add(p1);
		list.add(p2);
		list.add(p3);
		UserFormOBean.buyProcess("bbb", list);
		
	}

}
