package admin.dao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.*;
import util.DBConn;

public class DoctorDao {
	
	Connection con = getConnection();
	PreparedStatement pstmt =null;
	ResultSet rs=null;
	
	public static DoctorDao getInstance(){
		return new DoctorDao();
	}
	
//	public List<Librarian> getLibrarianALL(){
//		List<Librarian> list = new ArrayList<Librarian>();
//		try{
//			DBConn.init();
//			ResultSet rs = DBConn.selectSql("select * from librarian");
//			while(rs.next()){
//				Librarian lib = new Librarian();
//				lib.setLid(rs.getInt("lid"));
//				lib.setLname(rs.getString("lname"));
//				lib.setLpsw(rs.getString("lpsw"));
//				list.add(lib);
//			}
//			DBConn.closeConn();
//			return list;
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return null;
//	}
	
	
	
	public void addDoctor (String did,String dname,String dpsw,String email){
		String sql = "INSERT INTO doctor(doctor_id,doctor_name,doctor_pswd,doctor_email) VALUES(?,?,?,?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, did);
			pstmt.setString(2, dname);
			pstmt.setString(3, dpsw);
			pstmt.setString(4,email);
			pstmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch (SQLException e) {	
				e.printStackTrace();
			}
		}
	}
	
	public void deleteDoctor (String did) {
		
		try {
			String sql = "DELETE FROM doctor WHERE doctor_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, did);
			
			pstmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch (SQLException e) {	
				e.printStackTrace();
			}
		}
	}
	
	    public List<Doctor> ListDoc(){
	        List<Doctor> list =new ArrayList<Doctor>();
	        String sql="select * from Doctor";
	        try {
	        	pstmt=con.prepareStatement(sql);
	            rs=pstmt.executeQuery();
	            while(rs.next())
	            {
	            	Doctor l=new Doctor();
	                String id=rs.getString("doctor_id");
	                String name=rs.getString("doctor_name");
	                String psw=rs.getString("doctor_pswd");
	                String email = rs.getString("doctor_email");
	                
	                l.setDoctor_email(email);
	                l.setDoctor_id(id);
	                l.setDoctor_name(name);
	                l.setDoctor_pswd(psw);
	                list.add(l);
	            }
	            return list;
	            
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }finally
	        {
	            try {
	                if(rs!=null)
	                {
	                    rs.close();
	                }
	                if(pstmt!=null)
	                {
	                    pstmt.close();
	                }
	                if(con!=null)
	                {
	                    con.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        return null;
	    }

	
//	public Librarian SearchLib (String lid){
//		Librarian lib = new Librarian();
//		Connection con = getConnection();
//		PreparedStatement pstmt =null;
//		String sql = "SELECT * FROM librarian WHERE lid = ?";
//		try {
//			LibrarianDao dao=new LibrarianDao();
//            List<Librarian> list =dao.ListLib();
//			pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, lid);
//			rs = pstmt.executeQuery();
//			
//			int id = Integer.parseInt(lid);
//			
//			while (true) {
//				int i=0;
//				if (id==list.get(i).getLid())
//				{
//					lib = list.get(i);
//					break;
//					
//				}
//				else i++;
//			}
//			
//		}catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			try {
//				if(pstmt!=null)pstmt.close();
//				if(con!=null)con.close();
//			}catch (SQLException e) {	
//				e.printStackTrace();
//			}
//		}
//		return lib;
//	}
//	

//	    public Librarian SearchLib(String Slid) {
//	    	
//	    	DBConn.init();
//	    	
//	    	ResultSet rs = DBConn.selectSql("select * from  librarian where lid="+Slid);
//	    	
//	    	int lid=Integer.parseInt(Slid);
//		
//			Librarian lib = new Librarian();
//			
//
//			lib.setLibrarian_id(lid);
//			try {
//				lib.setLname(rs.getString("lname"));
//				lib.setLpsw(rs.getString("lpsw"));
//			} catch (SQLException e) {
//				
//				e.printStackTrace();
//			}
//				
//			DBConn.closeConn();
//		return lib;
//		
//	}
	
	
	    public static Connection getConnection(){
			String driver ="com.mysql.cj.jdbc.Driver";
			String url ="jdbc:mysql://localhost:3306/jdbctest?useSSL=false&serverTimezone=UTC";
			String user ="root";
			String password ="123456";
			Connection connection =null;
			try {
				Class.forName(driver);
				connection =DriverManager.getConnection(url, user, password);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return connection;
		}

	public void updatelpsw(int lid, String newpsw){
		DBConn.init();
		String sql ="update doctor set lpsw = " + newpsw
					+ " where lid = " + lid;
		DBConn.addUpdDel(sql);
			
		DBConn.closeConn();
	}
}

