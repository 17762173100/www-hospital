package admin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.dao.DoctorDao;
import bean.Doctor;

public class SearchDoctor extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public SearchDoctor() {
		super();
		// TODO 自动生成的自动函数存根
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String did = request.getParameter ("Sdoc");
		
		DoctorDao l = new DoctorDao();
		
		Doctor Doc = new Doctor();
		
//		l.SearchLib(lid);
		
//		PrintWriter out = response.getWriter();
//		out.print(li); 
		
		request.setAttribute("msg", "Id:"+did+".Name:"+Doc.getDoctor_name()+",password:"+Doc.getDoctor_pswd());
		request.getRequestDispatcher("showDoc.jsp").forward(request, response);
		
}
}