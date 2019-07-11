package admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LibrarianLogoutServlet
 */
public class AdminLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//HttpSession session = request.getSession();
		if(request.getSession(false)!=null //���û�ж�Ӧ��session������null�����ᴴ��session
	                && request.getSession().getAttribute("loginName")!=null) {
			 request.getSession().invalidate();
		 }
		 response.sendRedirect("AdminLogin.jsp");
		
			//false����������session����ֻ�Ǵ�request�л�ȡ��
//			HttpSession session = request.getSession(false);
//			if(session==null){
//				return;
//			}
//			session.removeAttribute("loginName");
//			//�Ӷ���index.jsp
//			response.sendRedirect("LibrarianLogin.jsp");
//		}
	}
	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
