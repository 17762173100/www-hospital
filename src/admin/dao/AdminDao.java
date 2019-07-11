package admin.dao;

import util.DBConn;

public class AdminDao {

	public static AdminDao getInstance(){
		return new AdminDao();
	}
	
	public void updateBookfine(String fine){
		DBConn.init();
		String sql = "update book set book_fine = " + fine;
		DBConn.addUpdDel(sql);
			
		DBConn.closeConn();	
	}
	
	public void updateBookreturnperiod(String time){
		
		DBConn.init();
		String sql = "update book set returnperiod = " + time;
		DBConn.addUpdDel(sql);
		
		DBConn.closeConn();
	}
	
}
