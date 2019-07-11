package admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import admin.dao.*;

public class AddDoctor extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	
	public AddDoctor() {
		super();
		// TODO �Զ����ɵĹ��캯�����
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		String did = request.getParameter("did");
		String dname = request.getParameter("dname");
		String dpsw = request.getParameter("dpsw");
		String email = request.getParameter("email");
		if(did==null||did.trim().isEmpty()){
			request.setAttribute("msg", "编号不能为空");
			request.getRequestDispatcher("/addDoctor.jsp").forward(request, response);
			return;
		}
		else if(dname==null||dname.trim().isEmpty()){
			request.setAttribute("msg", "名字不能为空");
			request.getRequestDispatcher("/addDoctor.jsp").forward(request, response);
			return;
		}
		else if(dpsw==null||dpsw.trim().isEmpty()){
			request.setAttribute("msg", "密码不能为空");
			request.getRequestDispatcher("/addDoctor.jsp").forward(request, response);
			return;
		}
		else {
		DoctorDao l = new DoctorDao();
		l.addDoctor(did, dname, dpsw,email);
		request.setAttribute("msg", "用户"+dname+"已经注册");
		request.getRequestDispatcher("addDoctor.jsp").forward(request, response);
		}
	}
	
	

}

