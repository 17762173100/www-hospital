package admin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.dao.AdminDao;
import bean.Admin;

/**
 * Servlet implementation class AdminLoginServlet
 */
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		adminLogin(request, response);
	}
	private void adminLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int isValid = 0;
		String user_account = request.getParameter("account");
		String user_pswd = request.getParameter("pswd");
		HttpSession session = request.getSession();

		Admin admin = new Admin();
		AdminDao admindao = new AdminDao();

		admin.setAdmin_id(user_account);
		admin.setAdmin_pswd(user_pswd);
// 		

		try {
			System.out.println(" test");
			isValid = admindao.verification(admin);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (isValid == 1) {
			
			
            //2.�����ݱ��浽session����
            session.setAttribute("loginName", admin.getAdmin_id());

			//System.out.println("Libararain login in sucessed");
			RequestDispatcher view = request.getRequestDispatcher("AdminHomePage.jsp");
			view.forward(request, response);
		} else if(isValid == 2) {
			String isMatch = "1";
			response.sendRedirect("AdminLogin.jsp?isMatch="+isMatch);
			}
		else if(isValid == 3) {
			String isMatch = "2";
			response.sendRedirect("AdminLogin.jsp?isMatch="+isMatch);
		}
	}
}
