package cake.wx.shopping.filter;


import java.io.* ;
import javax.servlet.* ;
import javax.servlet.http.* ;

public class LoginFilter implements Filter
{
	public void init(FilterConfig filterConfig)
          throws ServletException
	{
		
	}
	public void doFilter(ServletRequest request,
                     ServletResponse response,
                     FilterChain chain)
              throws IOException,
                     ServletException
	{
		// Session����HTTP���룬����ServletRequest������Ҫ��ת����HttpServletRequest����
		HttpServletRequest req = (HttpServletRequest)request ;
		HttpSession session = req.getSession() ;
		// ���session��Ϊ�գ�������������ҳ��
		if(session.getAttribute("admin")!=null)
		{
			chain.doFilter(request,response) ;
		}
		else
		{
			// ͨ��requestDispatcher��ת����½ҳ
			request.getRequestDispatcher("/administrator.jsp").forward(request,response) ;
		}
	}
	public void destroy()
	{
		
	}
}
