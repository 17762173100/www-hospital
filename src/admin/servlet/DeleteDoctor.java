package admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.dao.DoctorDao;

public class DeleteDoctor extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public DeleteDoctor() {
		super();
		// TODO �Զ����ɵĹ��캯�����
	}
	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String did = request.getParameter("did");
		
		DoctorDao l = new DoctorDao();
		
		l.deleteDoctor(did);
		
		request.setAttribute("msg", "删除"+did+"成功");
		request.getRequestDispatcher("showDoc.jsp").forward(request, response);
	}
	
}
