package admin.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.dao.AdminDao;
import admin.dao.LibrarianDAO;

/**
 * Servlet implementation class AdminChangePassWord
 */
public class AdminChangePassWord extends HttpServlet {
private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminChangePassWord() {
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
		//doGet(request, response);
		changePswd(request, response);
	}

	private void changePswd(HttpServletRequest request, HttpServletResponse response) {
		try {
			HttpSession session = request.getSession(false);
			String loginName = (String) session.getAttribute("loginName");
			
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			AdminDao admindao = new AdminDao();
			// print book_id to test the function
			System.out.println(loginName);

			ArrayList<String> pswd = new ArrayList<String>();
			pswd.add(request.getParameter("pswd1"));
			pswd.add(request.getParameter("pswd2"));

//			
			String mark = admindao.changePswd(pswd, loginName);
			if (mark.equals("success")) {
				response.sendRedirect("AdminHomePage.jsp?isMatch=" + "6");
			} else if (mark.equals("false")) {
				response.sendRedirect("AdminChangePswd.jsp?isMatch=" + "2");

			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
